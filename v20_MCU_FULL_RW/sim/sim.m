%% =========================================================================
%  8-点 FFT / DCT / 向量内积 / 排序   固定小数位验证脚本
%  -------------------------------------------------------------------------
%  - 采用 Q5 输入，前三轮蝶形后输出统一到 Q12
%  - 第 3 轮乘 1/√2 的系数精度 (coef_bits)、右移位数 (align_shift)
%    以及乘后是否四舍五入 (mul_rnd) 可在“参数区”调节
%  -------------------------------------------------------------------------
%  2025-06-17  ChatGPT 整理
%% =========================================================================
clear; clc; close all;
rng('default');                           % 固定随机数种子

%% --------------------------- 参数区 --------------------------------------
test_times   = 1;       % 随机测试组数
fft_size     = 8;

coef_bits    = 8;      % 旋转因子 1/√2 使用的 Q0.coef_bits (7/8/12/15…)
mul_rnd      = true;    % 乘后是否 +½LSB 再右移 (等效四舍五入)
align_shift  = coef_bits - 7;   % 必须 = (5+coef_bits−目标12)

%% ------------------------ 产生随机 Q5 输入 -------------------------------
%real_signal = zeros(test_times, fft_size);
%imag_signal = zeros(test_times, fft_size);
%for t = 1:test_times
%    real_signal(t,:) = floor((2*rand(1,fft_size)-1)*2^5+0.5)/2^5;   % Q5
%    imag_signal(t,:) = floor((2*rand(1,fft_size)-1)*2^5+0.5)/2^5;   % Q5
%end
%signal = real_signal + 1i*imag_signal;
%% ------------ 固定 Q5 输入（16-bit 十六进制） -----------------
hex_real = {'fff3','ffe3','ffe3','0000','fff7','001b','0006','0014'};
hex_imag = {'001b','fff7','ffee','ffe9','0000','0012','ffeb','ffec'};

test_times = 1;                 % 固定 1 组
fft_size   = 8;

real_signal = zeros(1,fft_size);
imag_signal = zeros(1,fft_size);

for k = 1:fft_size
    % ---- 实部 ----
    v = hex2dec(hex_real{k});
    if v >= 2^15, v = v - 2^16; end          % 符号扩展
    real_signal(k) = v / 32;                 % Q5 → 浮点
    % ---- 虚部 ----
    v = hex2dec(hex_imag{k});
    if v >= 2^15, v = v - 2^16; end
    imag_signal(k) = v / 32;
end
signal = real_signal + 1i*imag_signal;

% 方便对照：打印一下输入
fprintf('\n固定 Q5 输入 (十六进制 → 十进制)：\n');
disp(table(hex_real',real_signal',hex_imag',imag_signal', ...
     'VariableNames',{'Real_hex','Real_dec','Imag_hex','Imag_dec'}))

%% ---------------- 第 0,1 级蝶形：x2 (Q5) ---------------------------------
x2r = zeros(test_times,fft_size);  x2i = zeros(test_times,fft_size);
for t = 1:test_times
    xr = real_signal(t,:);  xi = imag_signal(t,:);
    % (0,4) (2,6) (1,5) (3,7)
    x2r(t,1) = xr(1)+xr(5);  x2r(t,2) = xr(1)-xr(5);
    x2r(t,3) = xr(3)+xr(7);  x2r(t,4) = xr(3)-xr(7);
    x2r(t,5) = xr(2)+xr(6);  x2r(t,6) = xr(2)-xr(6);
    x2r(t,7) = xr(4)+xr(8);  x2r(t,8) = xr(4)-xr(8);

    x2i(t,1) = xi(1)+xi(5);  x2i(t,2) = xi(1)-xi(5);
    x2i(t,3) = xi(3)+xi(7);  x2i(t,4) = xi(3)-xi(7);
    x2i(t,5) = xi(2)+xi(6);  x2i(t,6) = xi(2)-xi(6);
    x2i(t,7) = xi(4)+xi(8);  x2i(t,8) = xi(4)-xi(8);

    % 回到 Q5
    x2r(t,:) = round(x2r(t,:)*32)/32;
    x2i(t,:) = round(x2i(t,:)*32)/32;
end

%% ---------------- 第 2 级蝶形：x4 (Q5) ----------------------------------
x4r = zeros(test_times,fft_size);  x4i = zeros(test_times,fft_size);
for t = 1:test_times
    xr = x2r(t,:);  xi = x2i(t,:);
    % ---- 实部 ----
    x4r(t,1) =  xr(1)+xr(3);          % 0
    x4r(t,3) =  xr(1)-xr(3);          % 2
    x4r(t,2) =  xr(2)+xi(4);          % 1
    x4r(t,4) =  xr(2)-xi(4);          % 3
    x4r(t,5) =  xr(5)+xr(7);          % 4
    x4r(t,7) =  xr(5)-xr(7);          % 6
    x4r(t,6) =  xr(6)+xi(8);          % 5
    x4r(t,8) =  xr(6)-xi(8);          % 7
    % ---- 虚部 ----
    x4i(t,1) =  xi(1)+xi(3);
    x4i(t,3) =  xi(1)-xi(3);
    x4i(t,2) =  xi(2)-xr(4);
    x4i(t,4) =  xi(2)+xr(4);
    x4i(t,5) =  xi(5)+xi(7);
    x4i(t,7) =  xi(5)-xi(7);
    x4i(t,6) =  xi(6)-xr(8);
    x4i(t,8) =  xi(6)+xr(8);

    x4r(t,:) = round(x4r(t,:)*32)/32;
    x4i(t,:) = round(x4i(t,:)*32)/32;
end

%% -------- 打印第二轮 x4 结果（Q5 十六进制） ------------------------------
fprintf('\n===== 第二轮 (x4) 结果 -- Q5 十六进制 =====\n');
for t = 1:test_times
    fprintf('--- Test-%d 实部:\n',t);
    disp(cellstr(fi(x4r(t,:),1,16,5).hex)')
    fprintf('--- Test-%d 虚部:\n',t);
    disp(cellstr(fi(x4i(t,:),1,16,5).hex)')
end

%% ---------------- 第 3 级蝶形：x8 (统一到 Q12) ---------------------------
coef_int = round((1/sqrt(2))*2^coef_bits);   % 整数系数
fprintf('\n使用 1/√2 常量: 0x%X  (Q0.%d)\n',coef_int,coef_bits);

x8r = zeros(test_times,fft_size);  x8i = zeros(test_times,fft_size);
for t = 1:test_times
    xr = x4r(t,:);     xi = x4i(t,:);

    % helper: 乘系数 → Q12 (int32)
    mul_Q12 = @(q5) bitshift( ...
                    int32(q5*coef_int + mul_rnd*0.5), -align_shift );

    % ------------ 实部 ------------
    tmp = xr(6)+xi(6);         prod = mul_Q12(tmp);  % r5+i5
    x8r(t,1) = xr(1)+xr(5);                       % r0
    x8r(t,5) = xr(1)-xr(5);                       % r4
    x8r(t,2) = (xr(2)*32 + prod) / 4096;          % r1
    x8r(t,6) = (xr(2)*32 - prod) / 4096;          % r5

    x8r(t,3) = xr(3)+xi(7);                       % r2
    x8r(t,7) = xr(3)-xi(7);                       % r6
    tmp = xi(8)-xr(8);        prod = mul_Q12(tmp);   % i7 - r7
    x8r(t,4) = (xr(4)*32 + prod) / 4096;          % r3
    x8r(t,8) = (xr(4)*32 - prod) / 4096;          % r7

    % ------------ 虚部 ------------
    x8i(t,1) = xi(1)+xi(5);                       % i0
    x8i(t,5) = xi(1)-xi(5);                       % i4
    tmp = xi(6)-xr(6);        prod = mul_Q12(tmp);
    x8i(t,2) = (xi(2)*32 + prod) / 4096;          % i1
    x8i(t,6) = (xi(2)*32 - prod) / 4096;          % i5

    x8i(t,3) = xi(3)-xr(7);                       % i2
    fprintf('调试信息: xi(3)=%f, xi(7)=%f\n', xi(3), xi(7));
    x8i(t,7) = xi(3)+xr(7);                       % i6
    tmp = xr(8)+xi(8);        prod = mul_Q12(tmp);
    x8i(t,4) = (xi(4)*32 - prod) / 4096;          % i3
    x8i(t,8) = (xi(4)*32 + prod) / 4096;          % i7

    % 回到 Q12 浮点
    x8r(t,:) = round(x8r(t,:)*4096)/4096;
    x8i(t,:) = round(x8i(t,:)*4096)/4096;
end

%% -------- 打印第三轮 x8 结果（Q12 十六进制） -----------------------------
fprintf('\n===== 第三轮 (x8) 结果 -- Q12 十六进制 =====\n');
fprintf('  align_shift = %d   mul_rnd = %d\n', align_shift, mul_rnd);
for t = 1:test_times
    fprintf('--- Test-%d 实部:\n',t);
    disp(cellstr(fi(x8r(t,:),1,16,12).hex)')
    fprintf('--- Test-%d 虚部:\n',t);
    disp(cellstr(fi(x8i(t,:),1,16,12).hex)')
end

%% ---------------- 可选 : 与 MATLAB 浮点 FFT 对比 --------------------------
for t = 1:test_times
    ref = fft(signal(t,:));
    err = max(abs(ref - (x8r(t,:)+1i*x8i(t,:))));
    fprintf('\nTest-%d 对浮点 FFT 最大绝对误差 = %.6f\n', t, err);
end

