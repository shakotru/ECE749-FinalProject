#!/usr/bin/env python3

import os
import argparse
import shutil

N = 16
LUT_BITS = 10
LUT_MAX = 200
LUT_DEPTH = 1 << LUT_BITS

parser = argparse.ArgumentParser()
parser.add_argument("pattern", help="pattern folder name, for example p0 or p1")
args = parser.parse_args()

pattern = args.pattern

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

PATTERN_DIR = BASE_DIR + "/00_testbed/" + pattern
CURRENT_DIR = BASE_DIR + "/00_testbed/current"

POS_X_FILE = PATTERN_DIR + "/positions_x.txt"
POS_Y_FILE = PATTERN_DIR + "/positions_y.txt"
GOLDEN_FILE = PATTERN_DIR + "/golden_forces.txt"

CURRENT_POS_X_FILE = CURRENT_DIR + "/positions_x.txt"
CURRENT_POS_Y_FILE = CURRENT_DIR + "/positions_y.txt"
CURRENT_GOLDEN_FILE = CURRENT_DIR + "/golden_forces.txt"

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

def clear_directory(directory):
    if not os.path.exists(directory):
        os.makedirs(directory)
        return

    for name in os.listdir(directory):
        path = os.path.join(directory, name)

        if os.path.isfile(path) or os.path.islink(path):
            os.remove(path)
        elif os.path.isdir(path):
            shutil.rmtree(path)

# -------------------------------------------------
# Check paths
# -------------------------------------------------

if not os.path.exists(PATTERN_DIR):
    raise ValueError("Pattern directory does not exist: {}".format(PATTERN_DIR))

if not os.path.exists(POS_X_FILE):
    raise ValueError("Missing file: {}".format(POS_X_FILE))

if not os.path.exists(POS_Y_FILE):
    raise ValueError("Missing file: {}".format(POS_Y_FILE))

# -------------------------------------------------
# Read input positions from files
# -------------------------------------------------

pos_x = read_hex_file(POS_X_FILE, N)
pos_y = read_hex_file(POS_Y_FILE, N)

print("Using pattern:", pattern)
print("PATTERN_DIR  =", PATTERN_DIR)
print("CURRENT_DIR  =", CURRENT_DIR)
print("POS_X_FILE   =", POS_X_FILE)
print("POS_Y_FILE   =", POS_Y_FILE)
print("GOLDEN_FILE  =", GOLDEN_FILE)
print("")

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
# Generate golden forces in pattern folder
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

# -------------------------------------------------
# Clear current/ and copy active files into it
# -------------------------------------------------

if not os.path.exists(CURRENT_DIR):
    os.makedirs(CURRENT_DIR)

shutil.copy2(POS_X_FILE, CURRENT_POS_X_FILE)
shutil.copy2(POS_Y_FILE, CURRENT_POS_Y_FILE)
shutil.copy2(GOLDEN_FILE, CURRENT_GOLDEN_FILE)

print("Cleared {}".format(CURRENT_DIR))
print("Copied active files into current/:")
print("  {}".format(CURRENT_POS_X_FILE))
print("  {}".format(CURRENT_POS_Y_FILE))
print("  {}".format(CURRENT_GOLDEN_FILE))
