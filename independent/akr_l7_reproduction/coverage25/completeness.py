#!/usr/bin/env python3
"""COMPLETENESS of the 25-combination type list for n = 7.

This is the replacement for the load-bearing step of ../coverage.py.  It uses NO
symmetry reduction and NO orbit argument -- those are the things being replaced.
It is an exhaustive, exact enumeration over Z_7 (integer arithmetic only).

--------------------------------------------------------------------------
WHAT A COUNTEREXAMPLE TO LEMMA 7 WOULD LOOK LIKE
--------------------------------------------------------------------------
Two simple polygons P, Q with n = 7 sides each.  Write the vertices of P as
V(k) = p_k ^ p_{k+1} (k in Z_7), so that

        p_k = [ V(k-1), V(k) ]

and the vertices of Q as W(k) likewise.  Lemma 7 involves

  * two CONSECUTIVE-SIDE PAIRS of P, at apex positions u and u2 in Z_7:
        pair(u)  = ( p_u, p_{u+1} ),   apex V(u)
    the four sides p_u, p_{u+1}, p_{u2}, p_{u2+1} must be DISTINCT (they lie in
    four distinct components of G_D), which forces
        d_P = (u2 - u) mod 7  in  {2,3,4,5};
  * two consecutive-side pairs of Q, at apex positions w, w2, with
        d_Q = (w2 - w) mod 7  in  {2,3,4,5};
  * a matching  phi  (four E_D edges) from the four P-sides onto the four
    Q-sides, carrying each P-pair ONTO a Q-pair -- that is exactly the
    hypothesis "A,B is an associated pair of a,b and A',B' of a',b'".

The NAMES a, b, a', b', A, B, A', B' are not part of the geometry; they are a
labelling we choose.  The choices are
        which P-pair is the unprimed one           (2)
        which side of the unprimed pair is  a      (2)
        which side of the primed   pair is  a'     (2)
and then A = phi(a), B = phi(b), A' = phi(a'), B' = phi(b') are FORCED.  This
tandem action (choosing a vs b also chooses A vs B) is precisely what
coverage.py's orbit argument missed.

--------------------------------------------------------------------------
WHAT IS ENUMERATED
--------------------------------------------------------------------------
Every (u, d_P, w, d_Q, phi, labelling):  7*4 * 7*4 * 8 * 8  = 50176 cases.
For each we compute the full coincidence pattern of the six P-endpoints
{a2, v1, b2, ap2, v2, bp2} and of the six Q-endpoints, and read off the
labelled type.  We then check:

  (C1) an apex (v1, v2, v3, v4) NEVER coincides with any other endpoint;
  (C2) the only coincidences are FAR-FAR, i.e. within {a2,b2} x {ap2,bp2}
       (resp. {A2,B2} x {Ap2,Bp2});
  (C3) AT MOST ONE such coincidence holds;
  (C4) therefore the labelled type of each side is one of five, and the
       labelled combined type is one of  5 x 5 = 25;
  (C5) every combined type produced by the enumeration is in the 25-list that
       pq_types.py solves.

ASSUMPTION (inherited from AKR Sect. 9.1, and already relied on by the existing
encoder): P and Q are in general position -- in particular they share no vertex,
so no P-endpoint can coincide with a Q-endpoint.  Under that assumption the P-
and Q-coincidence patterns are independent data, which is why the list is a
product.
"""
import itertools, sys
from collections import OrderedDict

import pq_types

N = 7
DS = (2, 3, 4, 5)          # admissible (u2-u) mod 7 for two disjoint pairs


def p_endpoints(u, u2, which_unprimed, a_is_first, ap_is_first):
    """Return OrderedDict name -> vertex index in Z_7 for the six P-endpoints.

    pair at apex position t consists of sides p_t (far endpoint V(t-1)) and
    p_{t+1} (far endpoint V(t+1)), sharing apex V(t).
    """
    up, pr = (u, u2) if which_unprimed == 0 else (u2, u)
    # unprimed pair: apex V(up); its two sides have far endpoints V(up-1), V(up+1)
    a2 = (up - 1) % N if a_is_first else (up + 1) % N
    b2 = (up + 1) % N if a_is_first else (up - 1) % N
    ap2 = (pr - 1) % N if ap_is_first else (pr + 1) % N
    bp2 = (pr + 1) % N if ap_is_first else (pr - 1) % N
    return OrderedDict([("a2", a2), ("v1", up % N), ("b2", b2),
                        ("ap2", ap2), ("v2", pr % N), ("bp2", bp2)])


def coincidences(d):
    """All unordered label pairs with equal vertex index."""
    ks = list(d)
    return [(x, y) for i, x in enumerate(ks) for y in ks[i + 1:] if d[x] == d[y]]


FAR_P = {("a2", "ap2"): "a-ap", ("a2", "bp2"): "a-bp",
         ("b2", "ap2"): "b-ap", ("b2", "bp2"): "b-bp"}
FAR_Q = {("A2", "Ap2"): "A-Ap", ("A2", "Bp2"): "A-Bp",
         ("B2", "Ap2"): "B-Ap", ("B2", "Bp2"): "B-Bp"}


def classify(d, far_map):
    """Return (type_name, list_of_violations)."""
    co = coincidences(d)
    bad = []
    apexes = {"v1", "v2", "v3", "v4"}
    for x, y in co:
        if x in apexes or y in apexes:
            bad.append("C1 violated: apex coincidence %s=%s" % (x, y))
        elif (x, y) not in far_map and (y, x) not in far_map:
            bad.append("C2 violated: non-far-far coincidence %s=%s" % (x, y))
    if len(co) > 1:
        bad.append("C3 violated: %d simultaneous coincidences %s" % (len(co), co))
    if not co:
        return "none", bad
    x, y = co[0]
    t = far_map.get((x, y)) or far_map.get((y, x))
    return t, bad


def enumerate_all():
    """Exhaustive enumeration.  Returns (realisable_combined_types, violations,
    per-side type tallies, n_cases)."""
    found = {}
    viol = []
    ptally, qtally = {}, {}
    ncase = 0
    Pside_of = ["a", "b", "ap", "bp"]
    for u in range(N):
        for dP in DS:
            u2 = (u + dP) % N
            for w in range(N):
                for dQ in DS:
                    w2 = (w + dQ) % N
                    # phi: which Q-pair receives the P-pair at apex u, and the
                    # within-pair bijections.  8 choices.
                    for swapQ in (0, 1):
                        for flip1 in (0, 1):
                            for flip2 in (0, 1):
                                for wu in (0, 1):
                                    for af in (0, 1):
                                        for apf in (0, 1):
                                            ncase += 1
                                            P = p_endpoints(u, u2, wu, af, apf)
                                            # Determine the Q apex positions and
                                            # orientation flags that phi + the
                                            # labelling induce on A,B,A',B'.
                                            # P-pair at apex u  -> Q-pair at qa
                                            # P-pair at apex u2 -> Q-pair at qb
                                            qa, fa = (w, flip1) if not swapQ else (w2, flip1)
                                            qb, fb = (w2, flip2) if not swapQ else (w, flip2)
                                            # unprimed P-pair is the one at apex
                                            # u if wu==0 else at u2.
                                            if wu == 0:
                                                qup, fup = qa, fa
                                                qpr, fpr = qb, fb
                                            else:
                                                qup, fup = qb, fb
                                                qpr, fpr = qa, fa
                                            # a is the 'first' side of its P-pair
                                            # iff af; phi maps first->first iff
                                            # the flip flag is 0.
                                            A_is_first = (af == 1) ^ (fup == 1)
                                            Ap_is_first = (apf == 1) ^ (fpr == 1)
                                            Qd = p_endpoints(qup, qpr, 0,
                                                             1 if A_is_first else 0,
                                                             1 if Ap_is_first else 0)
                                            Q = OrderedDict([
                                                ("A2", Qd["a2"]), ("v3", Qd["v1"]),
                                                ("B2", Qd["b2"]), ("Ap2", Qd["ap2"]),
                                                ("v4", Qd["v2"]), ("Bp2", Qd["bp2"])])
                                            pt, b1 = classify(P, FAR_P)
                                            qt, b2 = classify(Q, FAR_Q)
                                            for m in b1:
                                                viol.append("P " + m)
                                            for m in b2:
                                                viol.append("Q " + m)
                                            ptally[pt] = ptally.get(pt, 0) + 1
                                            qtally[qt] = qtally.get(qt, 0) + 1
                                            found.setdefault((pt, qt), 0)
                                            found[(pt, qt)] += 1
    return found, viol, ptally, qtally, ncase


# ------------------------------------------------------------------ diagnostic
# NOT load-bearing.  Recomputes the orbit structure that coverage.py got wrong,
# to document why 25 separate instances are solved rather than 4.

SIDES = ["a", "b", "ap", "bp", "A", "B", "Ap", "Bp"]
DISJ = [("a", "A"), ("b", "B"), ("ap", "Ap"), ("bp", "Bp"),
        ("a", "ap"), ("a", "bp"), ("b", "ap"), ("b", "bp"),
        ("A", "Ap"), ("A", "Bp"), ("B", "Ap"), ("B", "Bp")]
VERT = [("a", "b"), ("ap", "bp"), ("A", "B"), ("Ap", "Bp")]


def aut16():
    D = set(map(frozenset, DISJ)); V = set(map(frozenset, VERT))
    out = []
    for p in itertools.permutations(SIDES):
        m = dict(zip(SIDES, p))
        if set(frozenset((m[x], m[y])) for x, y in DISJ) != D:
            continue
        if set(frozenset((m[x], m[y])) for x, y in VERT) != V:
            continue
        out.append(m)
    return out


def combined_orbits():
    G = aut16()
    def enc(pt, qt):
        s = set()
        if pt != "none":
            s.add(frozenset(pq_types.P_SIDES[pt]))
        if qt != "none":
            s.add(frozenset(pq_types.Q_SIDES[qt]))
        return frozenset(s)
    keys = {enc(p, q): (p, q) for p, q in pq_types.combos()}
    seen, orbs = set(), []
    for p, q in pq_types.combos():
        k = enc(p, q)
        if k in seen:
            continue
        orb = set()
        for m in G:
            orb.add(frozenset(frozenset((m[x], m[y])) for e in k for x, y in [tuple(e)]))
        orb &= set(keys)
        seen |= orb
        orbs.append(sorted(keys[o] for o in orb))
    return orbs


def q_only_orbits():
    """coverage.py's claim: the four Q-adjacencies in ISOLATION."""
    G = aut16()
    adj = [("A", "Ap"), ("A", "Bp"), ("B", "Ap"), ("B", "Bp")]
    S = set(map(frozenset, adj))
    seen, orbs = set(), []
    for e in adj:
        k = frozenset(e)
        if k in seen:
            continue
        orb = {frozenset((m[e[0]], m[e[1]])) for m in G} & S
        seen |= orb
        orbs.append(sorted(tuple(sorted(o)) for o in orb))
    return orbs


def main():
    print("=" * 74)
    print("COMPLETENESS OF THE 25-COMBINATION TYPE LIST FOR n = 7")
    print("=" * 74)
    print()
    print("Step 1 -- which (u2-u) mod 7 are admissible")
    for d in range(N):
        ok = d in DS
        why = ("OK" if ok else
               ("d=0: the two pairs coincide" if d == 0 else
                "the two pairs share a side (p_%s)" % ("u+1" if d == 1 else "u")))
        print("   d = %d : %-9s %s" % (d, "ADMISSIBLE" if ok else "excluded", why))
    print()
    print("Step 2 -- the far-far coincidence conditions, solved exactly in Z_7")
    print("   a2 = V(u-1), b2 = V(u+1), ap2 = V(u2-1), bp2 = V(u2+1)   [unprimed = pair(u)]")
    for nm, cond in [("a2 = ap2", "u-1 = u2-1"), ("b2 = bp2", "u+1 = u2+1"),
                     ("a2 = bp2", "u-1 = u2+1"), ("b2 = ap2", "u+1 = u2-1")]:
        sols = sorted(d for d in range(N)
                      if (({"a2 = ap2": 0, "b2 = bp2": 0,
                            "a2 = bp2": (-2) % N, "b2 = ap2": 2}[nm]) == d))
        adm = [d for d in sols if d in DS]
        print("   %-9s  <=>  %-11s  <=>  d = %s   -> admissible d: %s"
              % (nm, cond, sols, adm if adm else "NONE"))
    print("   => for a FIXED labelling only d=2 (b2=ap2) and d=5 (a2=bp2) occur,")
    print("      and never both, since d cannot be 2 and 5 at once.")
    print("      Relabelling (which side is 'a') moves the coincidence among all")
    print("      four named pairs, so all five P-types are labelled-realisable.")
    print()
    print("Step 3 -- exhaustive enumeration over (u,d_P,w,d_Q,phi,labelling)")
    found, viol, ptally, qtally, ncase = enumerate_all()
    print("   cases enumerated: %d" % ncase)
    print("   (C1) apex coincidences        : %d" % sum(1 for v in viol if "C1" in v))
    print("   (C2) non-far-far coincidences : %d" % sum(1 for v in viol if "C2" in v))
    print("   (C3) simultaneous coincidences: %d" % sum(1 for v in viol if "C3" in v))
    if viol:
        print("   *** VIOLATIONS ***")
        for v in sorted(set(viol))[:20]:
            print("      " + v)
        sys.exit(1)
    print("   P-type occurrences: %s"
          % ", ".join("%s=%d" % (k, ptally[k]) for k in pq_types.P_TYPES))
    print("   Q-type occurrences: %s"
          % ", ".join("%s=%d" % (k, qtally[k]) for k in pq_types.Q_TYPES))
    print()
    print("Step 4 -- every realisable combined type is in the solved 25-list")
    solved = set(pq_types.combos())
    missing = sorted(set(found) - solved)
    if missing:
        print("   *** %d REALISABLE TYPES NOT SOLVED: %s" % (len(missing), missing))
        sys.exit(1)
    print("   distinct realisable combined types : %d" % len(found))
    print("   solved combinations                : %d" % len(solved))
    print("   realisable \\ solved                : 0   <-- COVERAGE COMPLETE")
    unreach = sorted(solved - set(found))
    print("   solved but not realisable          : %d %s"
          % (len(unreach), unreach if unreach else ""))
    print("   (solving unrealisable combinations is harmless: the list is a")
    print("    SUPERSET of what a counterexample can produce.)")
    print()
    print("Step 5 -- diagnostic: why 25 and not 4 (this is the K-16 defect)")
    qo = q_only_orbits()
    print("   Q-adjacencies in ISOLATION under the order-%d group: %d orbit(s)"
          % (len(aut16()), len(qo)))
    for o in qo:
        print("      ", o)
    print("   => coverage.py's claim, and it is correct AS FAR AS IT GOES.")
    co = combined_orbits()
    print("   COMBINED (P-type,Q-type) under the SAME group: %d orbit(s)" % len(co))
    for o in co:
        print("      ", ["P%s/Q%s" % t for t in o])
    print("   => a single representative does NOT suffice.  No reduction is used")
    print("      below: all 25 are solved separately.")
    print()
    print("RESULT: the 25-combination list is COMPLETE for n = 7.")


if __name__ == "__main__":
    main()
