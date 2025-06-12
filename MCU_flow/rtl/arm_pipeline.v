// ------------------------------------------------------------------
// ----- arm_pipeline.v ---------------------------------------------
// ------------------------------------------------------------------
// CPU 顶层：流水寄存器、五段 datapath、hazard/forward 单元
// ------------------------------------------------------------------

module arm_pipeline (
  input  wire        clk,
  input  wire        rst,
  // 指令存储器接口 (假定异步读)
  output wire [31:0] imem_addr,
  input  wire [31:0] imem_rdata,
  // 数据存储器接口 (同步写 / 异步读)
  output wire [31:0] dmem_addr,
  output wire [31:0] dmem_wdata,
  output wire        dmem_we,
  input  wire [31:0] dmem_rdata
);

  reg validW;
  reg [31:0] aluOutW, memDataW;
  reg [4:0] rdW;
  reg memToRegW, regWriteW;
  wire [31:0] writeDataW;

  reg         validM;
  reg  [31:0] pcM;
  reg [31:0] aluOutM, writeDataM;
  reg [4:0] rdM;
  reg memReadM, memWriteM, memToRegM, regWriteM;

  wire memReadD, memWriteD, memToRegD, regWriteD, aluSrcD, branchD;

  // ---------------------------------------------------------------
  // 1. IF 级：PC 寄存器 + 取指存储器
  // ---------------------------------------------------------------
  reg  [31:0] pcF;  // 当前取指地址
  wire [31:0] pc_nextF;
  wire        pc_writeF;  // 来自 hazard/stall
  assign pc_nextF = pcF + 32'd4;

  always @(posedge clk) begin
    if (rst) pcF <= 32'h0000_0000;
    else if (pc_writeF) pcF <= pc_nextF;
  end

  assign imem_addr = pcF;
  wire [31:0] instrF = imem_rdata;

  // ---------------------------------------------------------------
  // IF/ID 寄存器
  // ---------------------------------------------------------------
  reg         validD;
  reg  [31:0] pcD;
  reg  [31:0] instrD;

  wire        flushD;  // 来自 hazard
  wire        stallF;  // 来自 hazard

  always @(posedge clk) begin
    if (rst) begin
      validD <= 1'b0;
    end else begin
      if (flushD) begin
        validD <= 1'b0;
      end else if (~stallF) begin
        validD <= 1'b1;
        pcD    <= pcF;
        instrD <= instrF;
      end
    end
  end

  // ---------------------------------------------------------------
  // 2. ID 级：指令译码与寄存器堆读取
  // ---------------------------------------------------------------
  // 解码字段
  wire [4:0] rs1D = instrD[19:15];
  wire [4:0] rs2D = instrD[24:20];
  wire [4:0] rdD = instrD[11:7];

  wire [1:0] immSrcD;
  assign immSrcD = branchD ? 2'b10 :  // BEQ/B型
      (memReadD | memWriteD) ? 2'b01 :  // LDR/STR
      2'b00;  // ADDI 等

  wire [31:0] immD;
  extend u_extend (
    .Instr (instrD[23:0]),  // 只取指令低 24 位
    .ImmSrc(immSrcD),
    .ExtImm(immD)
  );

  // 寄存器堆（双读单写）
  wire [31:0] rd1D, rd2D;
  regfile u_regfile (
    .clk(clk),
    .we (regWriteW),
    .ra1(rs1D),
    .ra2(rs2D),
    .wa (rdW),
    .wd (writeDataW),
    .rd1(rd1D),
    .rd2(rd2D)
  );

  // 控制器在 ID 级产生一次性控制总线
  wire [2:0] aluCtrlD;

  controller u_ctrl (
    .instr   (instrD),
    .aluCtrl (aluCtrlD),
    .memRead (memReadD),
    .memWrite(memWriteD),
    .memToReg(memToRegD),
    .regWrite(regWriteD),
    .aluSrc  (aluSrcD),
    .branch  (branchD)
  );

  // ---------------------------------------------------------------
  // ID/EX 寄存器
  // ---------------------------------------------------------------
  reg        validE;
  reg [31:0] pcE;
  reg [31:0] rd1E, rd2E, immE;
  reg [4:0] rs1E, rs2E, rdE;
  reg [2:0] aluCtrlE;
  reg memReadE, memWriteE, memToRegE, regWriteE, aluSrcE, branchE;

  wire stallE;  // load‑use hazard

  always @(posedge clk) begin
    if (rst) begin
      validE <= 1'b0;
    end else if (flushE) begin
      validE <= 1'b0;
    end else if (~stallE) begin
      validE    <= validD;
      pcE       <= pcD;
      rd1E      <= rd1D;
      rd2E      <= rd2D;
      immE      <= immD;
      rs1E      <= rs1D;
      rs2E      <= rs2D;
      rdE       <= rdD;
      aluCtrlE  <= aluCtrlD;
      memReadE  <= memReadD;
      memWriteE <= memWriteD;
      memToRegE <= memToRegD;
      regWriteE <= regWriteD;
      aluSrcE   <= aluSrcD;
      branchE   <= branchD;
    end
  end

  // ---------------------------------------------------------------
  // 3. EX 级：ALU 运算 + 前递
  // ---------------------------------------------------------------
  // 前递选择，来自 hazard/forward 单元
  wire [1:0] forwardAE, forwardBE;
  wire [31:0] srcAE, srcBE;

  assign srcAE = (forwardAE == 2'b00) ? rd1E :
                 (forwardAE == 2'b01) ? writeDataW :
                 (forwardAE == 2'b10) ? aluOutM    : rd1E; // 默认

  wire [31:0] aluSrcBE = aluSrcE ? immE : rd2E;
  assign srcBE = (forwardBE == 2'b00) ? aluSrcBE :
                 (forwardBE == 2'b01) ? writeDataW :
                 (forwardBE == 2'b10) ? aluOutM    : aluSrcBE;

  wire [31:0] aluOutE;
  alu u_alu (
    .a   (srcAE),
    .b   (srcBE),
    .ctrl(aluCtrlE),
    .y   (aluOutE)
  );

  // 分支判断（简化：仅零标志）
  wire zeroE = (aluOutE == 32'b0);
  wire takeBranchE = branchE & zeroE;

  // ---------------------------------------------------------------
  // EX/MEM 寄存器
  // ---------------------------------------------------------------


  always @(posedge clk) begin
    if (rst) begin
      validM <= 1'b0;
    end else begin
      validM     <= validE;
      pcM        <= pcE;
      aluOutM    <= aluOutE;
      writeDataM <= rd2E;  // 注意：未前递，因 lw‑sw 不需前递
      rdM        <= rdE;
      memReadM   <= memReadE;
      memWriteM  <= memWriteE;
      memToRegM  <= memToRegE;
      regWriteM  <= regWriteE;
    end
  end

  // 数据存储器接口
  assign dmem_addr  = aluOutM;
  assign dmem_wdata = writeDataM;
  assign dmem_we    = memWriteM & validM;

  wire [31:0] dmem_rdata_async = dmem_rdata;  // 默认异步读

  // ---------------------------------------------------------------
  // MEM/WB 寄存器
  // ---------------------------------------------------------------


  always @(posedge clk) begin
    if (rst) begin
      validW <= 1'b0;
    end else begin
      validW    <= validM;
      aluOutW   <= aluOutM;
      memDataW  <= dmem_rdata_async;
      rdW       <= rdM;
      memToRegW <= memToRegM;
      regWriteW <= regWriteM;
    end
  end

  // 写回数据选择
  assign writeDataW = memToRegW ? memDataW : aluOutW;

  // ---------------------------------------------------------------
  // Hazard 检测 + 前递
  // ---------------------------------------------------------------
  hazard u_hazard (
    // ID 阶段源寄存器
    .rs1D     (rs1D),
    .rs2D     (rs2D),
    // EX 阶段目标寄存器
    .rdE      (rdE),
    .memReadE (memReadE),
    // MEM/WB 级目标寄存器
    .rdM      (rdM),
    .regWriteM(regWriteM),
    .rdW      (rdW),
    .regWriteW(regWriteW),
    // 控制输出
    .stallF   (stallF),
    .flushD   (flushD),
    .flushE   (flushE),
    .forwardAE(forwardAE),
    .forwardBE(forwardBE)
  );

  // pc_writeF 等价于 ~stallF
  assign pc_writeF = ~stallF;

endmodule
