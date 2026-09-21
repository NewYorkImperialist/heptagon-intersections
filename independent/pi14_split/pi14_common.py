#!/usr/bin/env python3
"""
Shared ground truth for the Pi_14 independent-refutation attempts.

EVERY line of the condition list below was transcribed from the statement of
`minpattern001_impossible` in lean/MinPatternClauses001.lean (lines 8375-8397),
not from memory and not from the project's prose.  See FINDINGS.md section 1.

Lean:   orient a b c        = (b.1-a.1)*(c.2-a.2) - (b.2-a.2)*(c.1-a.1)
        ProperCross p q r s = orient p q r * orient p q s < 0
                            AND orient r s p * orient r s q < 0
Both are reproduced verbatim below.

Vertices: V0..V4 (the five P vertices) and V7..V12 (the six Q vertices).
Sides:    P_i = (V_i, V_{i+1})      i = 0..3
          Q_j = (V_{7+j}, V_{8+j})  j = 0..4
"""

# ---------------------------------------------------------------- ground truth
# (lhs, rhs, want_cross) with lhs/rhs given as VERTEX-INDEX PAIRS, exactly as
# they appear in the Lean hypothesis list.
PI14 = [
    ((0, 1),  (2, 3),   False),   # h0_2   : not ProperCross V0 V1 V2 V3
    ((0, 1),  (3, 4),   False),   # h0_3
    ((0, 1),  (8, 9),   True),    # h0_8
    ((0, 1),  (9, 10),  True),    # h0_9
    ((0, 1),  (11, 12), True),    # h0_11
    ((1, 2),  (3, 4),   False),   # h1_3
    ((1, 2),  (7, 8),   True),    # h1_7
    ((1, 2),  (8, 9),   False),   # h1_8
    ((1, 2),  (9, 10),  True),    # h1_9
    ((1, 2),  (10, 11), True),    # h1_10
    ((1, 2),  (11, 12), True),    # h1_11
    ((2, 3),  (7, 8),   True),    # h2_7
    ((2, 3),  (8, 9),   True),    # h2_8
    ((2, 3),  (11, 12), True),    # h2_11
    ((3, 4),  (7, 8),   True),    # h3_7
    ((3, 4),  (8, 9),   True),    # h3_8
    ((3, 4),  (9, 10),  True),    # h3_9
    ((7, 8),  (9, 10),  False),   # h7_9
    ((7, 8),  (10, 11), False),   # h7_10
    ((8, 9),  (10, 11), False),   # h8_10
    ((8, 9),  (11, 12), False),   # h8_11
]

VERTS = [0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12]

assert len(PI14) == 21
assert sum(1 for *_, w in PI14 if w) == 13
assert sum(1 for *_, w in PI14 if not w) == 8
# every vertex used must be in VERTS, and no other vertex may appear
_used = set()
for (a, b), (c, d), _ in PI14:
    _used |= {a, b, c, d}
assert _used == set(VERTS), (_used, set(VERTS))


def quad_triples(a, b, c, d):
    """The four orientation triples that decide ProperCross(a,b,c,d)."""
    return [(a, b, c), (a, b, d), (c, d, a), (c, d, b)]


def canon(t):
    """Canonical (sorted) key of a triple, plus the sign of the permutation
    that sorts it.  orient is alternating, so orient(t) = sgn * orient(key)."""
    a, b, c = t
    key = tuple(sorted(t))
    # parity of the permutation taking (a,b,c) to sorted order
    inv = (a > b) + (a > c) + (b > c)
    return key, (1 if inv % 2 == 0 else -1)
