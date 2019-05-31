#! /usr/bin/env python3

def colinear_lines_overlap(line1, line2):
    """Returns whether two lines (x1, x2) and (x3, x4) overlap"""
    a, b = sorted(list(line1))
    c, d = sorted(list(line2))

    return not((d < a) or (c > b))
