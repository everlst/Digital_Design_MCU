import math

# ---------- 固定参数 ----------
N          = 8          # FFT 点数
FRAC_BITS  = 7          # 小数位
MAX_INT16  = 0x7FFF
MIN_INT16  = -0x8000
MASK16     = 0xFFFF

# ---------- 工具函数 ----------
def hex_to_int16(h: str) -> int:
    """四位十六进制 → 带符号 16bit 整数"""
    v = int(h, 16)
    return v - 0x10000 if v & 0x8000 else v

def int16_to_hex(v: int) -> str:
    """带符号 16bit 整数 → 四位十六进制（补码）"""
    if v < 0:
        v = (v + 0x10000) & MASK16
    return f"{v & MASK16:04x}"

def saturate(v: int) -> int:
    """16bit 饱和"""
    return MAX_INT16 if v > MAX_INT16 else MIN_INT16 if v < MIN_INT16 else v

def fixed_mul(a: int, b: int) -> int:
    """Q8.7 × Q8.7 → Q8.7（先 32bit，再右移 7bit，最后饱和）"""
    return saturate((a * b) >> FRAC_BITS)

# ---------- 复数类型 ----------
class Cpx:
    __slots__ = ("r", "i")
    def __init__(self, r: int, i: int):
        self.r, self.i = r, i
    def copy(self):      # 仅用于保存阶段结果
        return Cpx(self.r, self.i)

# ---------- 位反序索引 ----------
m = int(math.log2(N))
BR = [int(f"{i:0{m}b}"[::-1], 2) for i in range(N)]

# ---------- Twiddle 系数 (Q8.7) ----------
W = []
for k in range(N // 2):
    angle         = -2 * math.pi * k / N
    W.append(Cpx(int(round(math.cos(angle) * (1 << FRAC_BITS))),
                 int(round(math.sin(angle) * (1 << FRAC_BITS)))))  # 已包含负号

# ---------- 输入数据（你的 16 位定点十六进制） ----------
real_hex = [
    "fff3", "ffe3", "ffe3", "0000",
    "fff7", "001b", "0006", "0014",
]
imag_hex = [
    "001b", "fff7", "ffee", "ffe9",
    "0000", "0012", "ffeb", "ffec",
]

x = [Cpx(hex_to_int16(r), hex_to_int16(i))
     for r, i in zip(real_hex, imag_hex)]

# ---------- FFT (DIT, 依硬件流程：先位反序后蝶形) ----------
#   stage_out 保存每一级蝶形结束后的全局序列
stage_out = []

# 1) 位反序重新排位
x = [x[BR_idx] for BR_idx in BR]

# 2) 逐级蝶形
for s in range(1, m + 1):               # s = 1,2,3   (N=8)
    M        = 1 << s
    half_M   = M >> 1
    for k in range(0, N, M):
        for j in range(half_M):
            tw   = W[(j * N) // M]      # W_N^(j)
            tgt  = x[k + j + half_M]

            # 复数乘：tw * tgt  →  Q8.7
            t_r  = fixed_mul(tw.r, tgt.r) - fixed_mul(tw.i, tgt.i)
            t_i  = fixed_mul(tw.r, tgt.i) + fixed_mul(tw.i, tgt.r)

            src  = x[k + j]
            # 蝶形运算并饱和
            x[k + j]          = Cpx(saturate(src.r + t_r),
                                     saturate(src.i + t_i))
            x[k + j + half_M] = Cpx(saturate(src.r - t_r),
                                     saturate(src.i - t_i))

    # 保存当前 stage 完整序列
    stage_out.append([c.copy() for c in x])

# ---------- 打印结果 ----------
for idx, vec in enumerate(stage_out, 1):
    print(f"Stage {idx}: ", end="")
    print(", ".join(f"{int16_to_hex(c.r)}+{int16_to_hex(c.i)}j" for c in vec))
