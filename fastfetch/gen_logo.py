#!/usr/bin/env python3
from pathlib import Path

ESC = "\x1b["
RST = "\x1b[0m"

def rgb(h):
    h = h.lstrip("#")
    return int(h[0:2], 16), int(h[2:4], 16), int(h[4:6], 16)

def fg_rgb(r, g, b):
    return f"{ESC}38;2;{r};{g};{b}m"

def lerp(a, b, t):
    return int(a + (b - a) * t + 0.5)

# Dark gray -> dark blood red (more) -> bright red -> light gray
# Dark blood reds connect to dark grays, occupy more area
sequence = [
    "#1C1C1C", "#303030",  # dark edge
    "#3A1512", "#3A1512", "#3A1512",  # very dark blood red (almost black-red)
    "#4D1B16", "#4D1B16", "#4D1B16",  # dark blood red
    "#6B221C", "#6B221C",  # medium-dark blood red
    "#8A2922", "#8A2922",  # medium blood red
    "#AF2F28", "#AF2F28",  # main red
    "#AF2F28",  # main red
    "#777777",  # mid gray transition
    "#DADADA", "#E8E8E8", "#F1F1F1", "#F4F4F4",  # light edge
]

colors_rgb = [rgb(c) for c in sequence]
N = len(sequence)

base_lines = [
    "                  -`",
    "                 .o+`",
    "                `ooo/",
    "               `+oooo:",
    "              `+oooooo:",
    "              -+oooooo+:",
    "            `/:-:++oooo+:",
    "           `/++++/+++++++:",
    "          `/++++++++++++++:",
    "         `/+++ooooooooooooo/`",
    "        ./ooosssso++osssssso+`",
    "       .oossssso-````/ossssss+`",
    "      -osssssso.      :ssssssso.",
    "     :osssssss/        osssso+++.",
    "    /ossssssss/        +ssssooo/-",
    "  `/ossssso+/:-        -:/+osssso+-",
    " `+sso+:-`                 `.-/+oso:",
    "`++:.                           `-/+/",
    ".`                                 `/",
]

vis_chars = []
for r, ln in enumerate(base_lines):
    for c, ch in enumerate(ln):
        if ch != " ":
            diag = r * 0.8 + c
            vis_chars.append((diag, r, c))
vis_chars.sort(key=lambda x: x[0])
total = len(vis_chars)
pos_to_order = {(r, c): i for i, (_, r, c) in enumerate(vis_chars)}

def pick_color_rgb(row, col):
    order = pos_to_order.get((row, col), 0)
    t = order / max(1, total - 1)
    fidx = t * (N - 1)
    base_idx = int(fidx)
    frac = fidx - base_idx
    if base_idx >= N - 1:
        return colors_rgb[N - 1]
    r1, g1, b1 = colors_rgb[base_idx]
    r2, g2, b2 = colors_rgb[base_idx + 1]
    stripe = ((row + col) % 3) / 3.0 * 0.2
    frac_mod = (frac + stripe) % 1.0
    return (lerp(r1, r2, frac_mod), lerp(g1, g2, frac_mod), lerp(b1, b2, frac_mod))

def render_line(row, line):
    out = []
    last = None
    for col, ch in enumerate(line):
        if ch == " ":
            out.append(" ")
            continue
        r, g, b = pick_color_rgb(row, col)
        seq = fg_rgb(r, g, b)
        if seq != last:
            out.append(seq)
            last = seq
        out.append(ch)
    out.append(RST)
    return "".join(out)

rendered = [render_line(i, ln) for i, ln in enumerate(base_lines)]
home_logo = Path.home() / ".config/fastfetch/logo-arch-full-gradient.txt"
ws_logo = Path("/home/yumiaoyi/Downloads") / "logo-arch-full-gradient.txt"
home_logo.write_text("\n".join(rendered) + "\n", encoding="utf-8")
ws_logo.write_text("\n".join(rendered) + "\n", encoding="utf-8")
print("wrote", home_logo)
print("wrote", home_logo)
