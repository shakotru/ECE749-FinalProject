#!/usr/bin/env python3

import os

N = 16
LUT_BITS = 10
LUT_MAX = 200
LUT_DEPTH = 1 << LUT_BITS

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

POS_X_FILE = BASE_DIR + "/00_testbed/p0/positions_x.txt"
POS_Y_FILE = BASE_DIR + "/00_testbed/p0/positions_y.txt"
GOLDEN_FILE = BASE_DIR + "/00_testbed/p0/golden_forces.txt"

def read_hex_file(filename, expected_count):
    values = []
    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            if line == "":
                continue
            values.append(int(line, 16))

    if len(values) != expected_count:
        raise ValueError(
            "File {} has {} entries, expected {}".format(
                filename, len(values), expected_count
            )
        )

    return values

# -------------------------------------------------
# Read input positions from files
# -------------------------------------------------

pos_x = read_hex_file(POS_X_FILE, N)
pos_y = read_hex_file(POS_Y_FILE, N)

print("Loaded positions:")
for i in range(N):
    print("particle[{}]: x=0x{:08x} y=0x{:08x}".format(i, pos_x[i], pos_y[i]))

# -------------------------------------------------
# Build LUT exactly like force_pipeline.v
# -------------------------------------------------

g_lut = [0] * LUT_DEPTH
g_lut[0] = 0xFFFFFFFF

for k in range(1, LUT_DEPTH):
    w = (k * 1.0 * LUT_MAX) / LUT_DEPTH

    if w < 0.01:
        g_lut[k] = 0xFFFFFFFF
    else:
        g = 1.0 / w
        if g > 255.0:
            g_lut[k] = 0xFFFFFFFF
        else:
            g_lut[k] = int(g * 16777216.0)

# -------------------------------------------------
# Generate golden forces
# -------------------------------------------------

pair_count = 0

with open(GOLDEN_FILE, "w") as fg:
    for i in range(N):
        for j in range(i + 1, N):
            dx = pos_x[i] - pos_x[j]
            dy = pos_y[i] - pos_y[j]

            r2 = dx * dx + dy * dy

            lut_idx = (r2 >> 5) & ((1 << LUT_BITS) - 1)
            force = g_lut[lut_idx]

            print("pair ({},{}): r2={} idx={} force=0x{:08x}".format(
                i, j, r2, lut_idx, force
            ))

            fg.write("{} {} {:08x}\n".format(i, j, force))
            pair_count += 1

print("")
print("Wrote {} pairs to {}".format(pair_count, GOLDEN_FILE))
