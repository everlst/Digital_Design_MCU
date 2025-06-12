module  Commmon_mem(
    input   wire                clk_in,
    input   wire                rst,
    input   wire                we1,
    input   wire        [1:0]   addr1,
    input   wire        [2:0]   rd_od1,
    input   wire        [31:0]  wd_data1,
    output  reg         [31:0]  rd_data1,
    
    input   wire                we2,
    input   wire        [1:0]   addr2,
    input   wire        [2:0]   rd_od2,
    input   wire        [31:0]  wd_data2,
    output  reg        [31:0]  rd_data2,
    
    input   wire                we3,
    input   wire        [1:0]   addr3,
    input   wire        [2:0]   rd_od3,
    input   wire        [31:0]  wd_data3,
    output  reg        [31:0]  rd_data3,
    
    input   wire                we4,
    input   wire        [1:0]   addr4,
    input   wire        [2:0]   rd_od4,
    input   wire        [31:0]  wd_data4,
    output  reg        [31:0]  rd_data4,
    
    input   wire                we5,
    input   wire        [1:0]   addr5,
    input   wire        [2:0]   rd_od5,
    input   wire        [31:0]  wd_data5,
    output  reg        [31:0]  rd_data5,
    
    input   wire                we6,
    input   wire        [1:0]   addr6,
    input   wire        [2:0]   rd_od6,
    input   wire        [31:0]  wd_data6,
    output  reg         [31:0]  rd_data6,
    
    input   wire                we7,
    input   wire        [1:0]   addr7,
    input   wire        [2:0]   rd_od7,
    input   wire        [31:0]  wd_data7,
    output  reg         [31:0]  rd_data7,
    
    input   wire                we8,
    input   wire        [1:0]   addr8,
    input   wire        [2:0]   rd_od8,
    input   wire        [31:0]  wd_data8,
    output  reg         [31:0]  rd_data8
);
reg [31:0] RAM1[3:0],RAM2[3:0],RAM3[3:0],RAM4[3:0],RAM5[3:0],RAM6[3:0],RAM7[3:0],RAM8[3:0];
integer i; 
 
always@(posedge clk_in or posedge rst) begin
    if(rst == 1'b1) begin
        for (i = 0; i < 4; i = i+1) begin
            RAM1[i] <= 32'd0;
        end
    end
    else if(we1 == 1'b1) 
        RAM1[addr1] <= wd_data1;
end

always@(posedge clk_in or posedge rst) begin
    if(rst == 1'b1) begin
        for (i = 0; i < 4; i = i+1) begin
            RAM2[i] <= 32'd0;
        end
    end
    else if(we2 == 1'b1) 
        RAM2[addr2] <= wd_data2;
end

always@(posedge clk_in or posedge rst) begin
    if(rst == 1'b1) begin
        for (i = 0; i < 4; i = i+1) begin
            RAM3[i] <= 32'd0;
        end
    end
    else if(we3 == 1'b1) 
        RAM3[addr3] <= wd_data3;
end

always@(posedge clk_in or posedge rst) begin
    if(rst == 1'b1) begin
        for (i = 0; i < 4; i = i+1) begin
            RAM4[i] <= 32'd0;
        end
    end
    else if(we4 == 1'b1) 
        RAM4[addr4] <= wd_data4;
end

always@(posedge clk_in or posedge rst) begin
    if(rst == 1'b1) begin
        for (i = 0; i < 4; i = i+1) begin
            RAM5[i] <= 32'd0;
        end
    end
    else if(we5 == 1'b1) 
        RAM5[addr5] <= wd_data5;
end

always@(posedge clk_in or posedge rst) begin
    if(rst == 1'b1) begin
        for (i = 0; i < 4; i = i+1) begin
            RAM6[i] <= 32'd0;
        end
    end
    else if(we6 == 1'b1) 
        RAM6[addr6] <= wd_data6;
end

always@(posedge clk_in or posedge rst) begin
    if(rst == 1'b1) begin
        for (i = 0; i < 4; i = i+1) begin
            RAM7[i] <= 32'd0;
        end
    end
    else if(we7 == 1'b1) 
        RAM7[addr7] <= wd_data7;
end

always@(posedge clk_in or posedge rst) begin
    if(rst == 1'b1) begin
        for (i = 0; i < 4; i = i+1) begin
            RAM8[i] <= 32'd0;
        end
    end
    else if(we8 == 1'b1) 
        RAM8[addr8] <= wd_data8;
end

always@(*) begin
    case(rd_od1)
        3'd0:rd_data1 = RAM1[addr1];
        3'd1:rd_data1 = RAM2[addr1];
        3'd2:rd_data1 = RAM3[addr1];
        3'd3:rd_data1 = RAM4[addr1];
        3'd4:rd_data1 = RAM5[addr1];
        3'd5:rd_data1 = RAM6[addr1];
        3'd6:rd_data1 = RAM7[addr1];
        3'd7:rd_data1 = RAM8[addr1];
        default:rd_data1 = RAM1[addr1];
    endcase
end

always@(*) begin
    case(rd_od2)
        3'd0:rd_data2 = RAM1[addr2];
        3'd1:rd_data2 = RAM2[addr2];
        3'd2:rd_data2 = RAM3[addr2];
        3'd3:rd_data2 = RAM4[addr2];
        3'd4:rd_data2 = RAM5[addr2];
        3'd5:rd_data2 = RAM6[addr2];
        3'd6:rd_data2 = RAM7[addr2];
        3'd7:rd_data2 = RAM8[addr2];
        default:rd_data2 = RAM2[addr2];
    endcase
end

always@(*) begin
    case(rd_od3)
        3'd0:rd_data3 = RAM1[addr3];
        3'd1:rd_data3 = RAM2[addr3];
        3'd2:rd_data3 = RAM3[addr3];
        3'd3:rd_data3 = RAM4[addr3];
        3'd4:rd_data3 = RAM5[addr3];
        3'd5:rd_data3 = RAM6[addr3];
        3'd6:rd_data3 = RAM7[addr3];
        3'd7:rd_data3 = RAM8[addr3];
        default:rd_data3 = RAM3[addr3];
    endcase
end

always@(*) begin
    case(rd_od4)
        3'd0:rd_data4 = RAM1[addr4];
        3'd1:rd_data4 = RAM2[addr4];
        3'd2:rd_data4 = RAM3[addr4];
        3'd3:rd_data4 = RAM4[addr4];
        3'd4:rd_data4 = RAM5[addr4];
        3'd5:rd_data4 = RAM6[addr4];
        3'd6:rd_data4 = RAM7[addr4];
        3'd7:rd_data4 = RAM8[addr4];
        default:rd_data4 = RAM4[addr4];
    endcase
end

always@(*) begin
    case(rd_od5)
        3'd0:rd_data5 = RAM1[addr5];
        3'd1:rd_data5 = RAM2[addr5];
        3'd2:rd_data5 = RAM3[addr5];
        3'd3:rd_data5 = RAM4[addr5];
        3'd4:rd_data5 = RAM5[addr5];
        3'd5:rd_data5 = RAM6[addr5];
        3'd6:rd_data5 = RAM7[addr5];
        3'd7:rd_data5 = RAM8[addr5];
        default:rd_data5 = RAM5[addr5];
    endcase
end

always@(*) begin
    case(rd_od6)
        3'd0:rd_data6 = RAM1[addr6];
        3'd1:rd_data6 = RAM2[addr6];
        3'd2:rd_data6 = RAM3[addr6];
        3'd3:rd_data6 = RAM4[addr6];
        3'd4:rd_data6 = RAM5[addr6];
        3'd5:rd_data6 = RAM6[addr6];
        3'd6:rd_data6 = RAM7[addr6];
        3'd7:rd_data6 = RAM8[addr6];
        default:rd_data6 = RAM6[addr6];
    endcase
end

always@(*) begin
    case(rd_od7)
        3'd0:rd_data7 = RAM1[addr7];
        3'd1:rd_data7 = RAM2[addr7];
        3'd2:rd_data7 = RAM3[addr7];
        3'd3:rd_data7 = RAM4[addr7];
        3'd4:rd_data7 = RAM5[addr7];
        3'd5:rd_data7 = RAM6[addr7];
        3'd6:rd_data7 = RAM7[addr7];
        3'd7:rd_data7 = RAM8[addr7];
        default:rd_data7 = RAM7[addr7];
    endcase
end

always@(*) begin
    case(rd_od8)
        3'd0:rd_data8 = RAM1[addr8];
        3'd1:rd_data8 = RAM2[addr8];
        3'd2:rd_data8 = RAM3[addr8];
        3'd3:rd_data8 = RAM4[addr8];
        3'd4:rd_data8 = RAM5[addr8];
        3'd5:rd_data8 = RAM6[addr8];
        3'd6:rd_data8 = RAM7[addr8];
        3'd7:rd_data8 = RAM8[addr8];
        default:rd_data8 = RAM8[addr8];
    endcase
end


endmodule
