def q7_hex_to_float(hex_values):
    """
    hex_values:  iterable，元素是形如 'ffc3' 的 4 位十六进制字符串
    返回:        对应的十进制浮点数列表
    """
    result = []
    for h in hex_values:
        v = int(h, 16)  # 先变成无符号整数
        if v & 0x8000:  # 若符号位为 1，则转成补码意义下的负数
            v -= 0x10000
        result.append(v / 2**12)  # 除以 128 得到实际值
    return result


# ---- 示例 ----
hex_in = []  # 你自己的输入
with open("y:\\Code\\Digital_Design_MCU\\v20_MCU_FULL_RW\\sim\\trans.txt", "r") as file:
    for line in file:
        line = line.strip()
        # 跳过注释行和空行
        if line and not line.startswith("#"):
            hex_in.append(line)
print(q7_hex_to_float(hex_in))
