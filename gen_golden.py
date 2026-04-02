# gen_golden.py
# Reads positions_x.txt and positions_y.txt
# Writes golden_forces.txt

LUT_BITS  = 10
LUT_DEPTH = 1 << LUT_BITS   # 1024
LUT_MAX   = 25000
Q24       = 1 << 24

# Build same LUT as hardware
lut = [0] * LUT_DEPTH
lut[0] = 0xFFFFFFFF
for k in range(1, LUT_DEPTH):
    w = (k * LUT_MAX) / LUT_DEPTH
    if w < 0.01:
        lut[k] = 0xFFFFFFFF
    else:
        val = int((1.0 / w) * Q24)
        lut[k] = min(val, 0xFFFFFFFF)

# Read positions (hex values)
def read_hex_file(filename):
    vals = []
    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            if line:
                vals.append(int(line, 16))
    return vals

pos_x = read_hex_file("positions_x.txt")
pos_y = read_hex_file("positions_y.txt")

assert len(pos_x) == len(pos_y), "x and y files must have same number of particles"
N = len(pos_x)
print(f"Loaded {N} particles")

# Compute pairwise forces using same LUT lookup as hardware
with open("golden_forces.txt", "w") as f:
    for i in range(N):
        for j in range(i+1, N):
            dx = pos_x[i] - pos_x[j]
            dy = pos_y[i] - pos_y[j]
            r2 = dx*dx + dy*dy

            lut_idx = (r2 >> 5) & (LUT_DEPTH - 1)   # bits [14:5]
            force   = lut[lut_idx]

            f.write(f"{force:08x}\n")
            print(f"pair ({i},{j}): r2={r2} idx={lut_idx} force=0x{force:08x}")

print(f"Wrote {N*(N-1)//2} golden forces to golden_forces.txt")
