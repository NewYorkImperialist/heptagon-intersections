#!/usr/bin/env python3
"""Systematic enumeration of the ENDPOINT-IDENTIFICATION TYPES of the AKR
Lemma 7 local configuration.

This module replaces the load-bearing step of `../coverage.py`, whose orbit
argument was wrong (docs/known-issues.md K-16): it claimed the four
Q-adjacencies form a single orbit under the order-16 automorphism group.  That
is true for a Q-adjacency *in isolation*, but the group acts in TANDEM on the
P- and Q-labels (a<->b forces A<->B), so the combined PQ types split further,
and the single representative that was tested (`PQ-adj`) turned out to be
VACUOUS (`PQ-adj/none` is UNSAT).

Nothing here uses a symmetry reduction.  Every labelled type is enumerated and
solved separately.

--------------------------------------------------------------------------
THE TYPE LIST
--------------------------------------------------------------------------
The configuration has 12 canonical points

    a  = [v1, a2]    b  = [v1, b2]     (consecutive sides of P, apex v1)
    a' = [v2, ap2]   b' = [v2, bp2]    (consecutive sides of P, apex v2)
    A  = [v3, A2]    B  = [v3, B2]     (consecutive sides of Q, apex v3)
    A' = [v4, Ap2]   B' = [v4, Bp2]    (consecutive sides of Q, apex v4)

`completeness.py` proves (by exact enumeration over Z_7, no floating point)
that for n = 7 the ONLY coincidences that can occur among the six P-points are
between a FAR endpoint of the unprimed pair and a FAR endpoint of the primed
pair, and that AT MOST ONE such coincidence can hold.  That gives exactly five
P-types, and by the identical argument on Q exactly five Q-types:

    P-types : none | a-ap | a-bp | b-ap | b-bp        (which two P-sides are
    Q-types : none | A-Ap | A-Bp | B-Ap | B-Bp         adjacent sides of the
                                                       simple polygon)

so 5 x 5 = 25 labelled combinations.  Each is solved under five statuses:

    none          -- BASE-PATTERN CONTROL.  No status constraint at all.  If a
                     combination is UNSAT here, its base pattern is infeasible
                     and ALL its other verdicts are VACUOUS: they carry no
                     information.  This is exactly the defect K-16 records.
    mixed-1/2     -- status controls (AKR's Fig. 6 pattern is mixed-1).
    both-hooking  -- FORBIDDEN by Lemma 7.
    both-hooked   -- FORBIDDEN by Lemma 7.

--------------------------------------------------------------------------
THE ENCODER
--------------------------------------------------------------------------
The CNF is produced by ../evidence/tools/indep_om.py -- the SAME audited
encoder that produced the 20 committed CNFs -- called with a generalised
identification map.  `legacy_tag()` records which four of the 25 combinations
coincide with the old variants; `gen_cnf.py` asserts those four reproduce the
committed SHA-256 sums byte-for-byte, which ties the new formulas to the
existing audit trail.
"""
import os, sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPRO = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(REPRO, "evidence", "tools"))
# Real python-sat wins if installed; the shim (which raises on use) is only a
# fallback so that CNF CONSTRUCTION works with no solver present.
sys.path.append(os.path.join(REPRO, "evidence", "shims"))
import indep_om                                             # noqa: E402

# ---------------------------------------------------------------- type lists

P_TYPES = ["none", "a-ap", "a-bp", "b-ap", "b-bp"]
Q_TYPES = ["none", "A-Ap", "A-Bp", "B-Ap", "B-Bp"]
STATUSES = ["none", "mixed-1", "mixed-2", "both-hooking", "both-hooked"]
FORBIDDEN = ["both-hooking", "both-hooked"]

# identification: the PRIMED far endpoint is collapsed onto the UNPRIMED one.
P_IDENT = {"none": None, "a-ap": ("ap2", "a2"), "a-bp": ("bp2", "a2"),
           "b-ap": ("ap2", "b2"), "b-bp": ("bp2", "b2")}
Q_IDENT = {"none": None, "A-Ap": ("Ap2", "A2"), "A-Bp": ("Bp2", "A2"),
           "B-Ap": ("Ap2", "B2"), "B-Bp": ("Bp2", "B2")}
# the pair of SIDE names that the identification makes adjacent
P_SIDES = {"none": None, "a-ap": ("a", "ap"), "a-bp": ("a", "bp"),
           "b-ap": ("b", "ap"), "b-bp": ("b", "bp")}
Q_SIDES = {"none": None, "A-Ap": ("A", "Ap"), "A-Bp": ("A", "Bp"),
           "B-Ap": ("B", "Ap"), "B-Bp": ("B", "Bp")}

# The four combinations that coincide with the old four variants.
LEGACY = {("none", "none"): "generic", ("b-ap", "none"): "P-adj",
          ("none", "B-Ap"): "Q-adj", ("b-ap", "B-Ap"): "PQ-adj"}


def combos():
    """The 25 labelled (P-type, Q-type) combinations, in deterministic order."""
    return [(p, q) for p in P_TYPES for q in Q_TYPES]


def tag(ptype, qtype, status):
    return "P%s_Q%s_%s" % (ptype, qtype, status)


def legacy_tag(ptype, qtype, status):
    v = LEGACY.get((ptype, qtype))
    return None if v is None else "%s_%s" % (v, status)


# ---------------------------------------------------------------- the model

def model(ptype, qtype):
    """Points, segments and required intersection pattern for one combination.

    Mirrors indep_om.model() exactly -- same canonical point order, same
    pattern-dict insertion order -- so that the four legacy combinations
    produce byte-identical DIMACS.
    """
    assert ptype in P_TYPES and qtype in Q_TYPES, (ptype, qtype)
    ident = {}
    if P_IDENT[ptype]:
        k, v = P_IDENT[ptype]; ident[k] = v
    if Q_IDENT[qtype]:
        k, v = Q_IDENT[qtype]; ident[k] = v
    nm = lambda p: ident.get(p, p)                                 # noqa: E731
    base = ["v1", "a2", "b2", "v2", "ap2", "bp2",
            "v3", "A2", "B2", "v4", "Ap2", "Bp2"]
    pts = []
    for p in base:
        if nm(p) not in pts:
            pts.append(nm(p))
    segs = {"a": (nm("v1"), nm("a2")),   "b":  (nm("v1"), nm("b2")),
            "ap": (nm("v2"), nm("ap2")), "bp": (nm("v2"), nm("bp2")),
            "A": (nm("v3"), nm("A2")),   "B":  (nm("v3"), nm("B2")),
            "Ap": (nm("v4"), nm("Ap2")), "Bp": (nm("v4"), nm("Bp2"))}
    Pp = ["a", "b", "ap", "bp"]; Qq = ["A", "B", "Ap", "Bp"]
    ED = {("a", "A"), ("b", "B"), ("ap", "Ap"), ("bp", "Bp")}
    pat = {}
    # (P4) the required intersection pattern.
    #   E_D pairs are DISJOINT; the other 12 P-Q pairs lie in distinct
    #   components of G_D and therefore MUST meet.
    for x in Pp:
        for y in Qq:
            pat[(x, y)] = (x, y) not in ED
    #   non-adjacent sides of a SIMPLE polygon are disjoint
    for x, y in [("a", "ap"), ("a", "bp"), ("b", "ap"), ("b", "bp")]:
        pat[(x, y)] = False
    for x, y in [("A", "Ap"), ("A", "Bp"), ("B", "Ap"), ("B", "Bp")]:
        pat[(x, y)] = False
    #   ...except the one pair the identification makes ADJACENT, which shares a
    #   vertex and therefore meets.  Dropping the disjointness requirement here
    #   is an UNDER-constraint, which is the sound direction for UNSAT.
    if P_SIDES[ptype]:
        pat[P_SIDES[ptype]] = True
    if Q_SIDES[qtype]:
        pat[Q_SIDES[qtype]] = True
    return pts, segs, pat


def dimacs(ptype, qtype, status):
    """DIMACS text for one instance.  Pure Python; no solver required."""
    pts, segs, pat = model(ptype, qtype)
    E = indep_om.build(pts, segs, pat, indep_om.statuses(segs, status))
    return ("p cnf %d %d\n" % (E.nv, len(E.cls)) +
            "".join(" ".join(map(str, c)) + " 0\n" for c in E.cls))


def instances():
    """All 125 (ptype, qtype, status) triples, deterministic order."""
    return [(p, q, s) for (p, q) in combos() for s in STATUSES]


if __name__ == "__main__":
    print("P-types (%d): %s" % (len(P_TYPES), ", ".join(P_TYPES)))
    print("Q-types (%d): %s" % (len(Q_TYPES), ", ".join(Q_TYPES)))
    print("combinations: %d x %d = %d" % (len(P_TYPES), len(Q_TYPES), len(combos())))
    print("statuses (%d): %s" % (len(STATUSES), ", ".join(STATUSES)))
    print("instances:    %d" % len(instances()))
    print()
    for p, q in combos():
        pts, segs, pat = model(p, q)
        lg = LEGACY.get((p, q), "-")
        print("  P%-5s Q%-5s  points=%2d  legacy=%s" % (p, q, len(pts), lg))
