#!/usr/bin/env python3
"""
gen_endgame_data.py -- deterministic generator for lean/EndgameData.lean.

Reads ONLY data/certificates/final_elimination_225.json (the committed
certificate) and emits the Lean data module consumed by lean/Endgame.lean.
Nothing is hand-copied; re-running this script must reproduce the committed
lean/EndgameData.lean byte for byte.

The only field that is not a verbatim copy of a JSON field is the pair
(sepP, sepQ): the connected component of the P-side `witness.pair[0]` in the
bipartite disjointness graph, encoded as two 7-bit masks.  It is *derived* here
purely from `graph.P_neighbourhood_bitmasks`, and the Lean development does not
trust it -- `Endgame.lean` kernel-checks that it really is closed under
adjacency (`sepClosedB`), which is what turns "different components" into a
theorem instead of an assumption.

Usage:
    python3 lean/gen_endgame_data.py            # writes lean/EndgameData.lean
    python3 lean/gen_endgame_data.py --stdout   # print instead (for diffing)
"""
import argparse
import hashlib
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, os.pardir))
JSON_PATH = os.path.join(ROOT, "data", "certificates", "final_elimination_225.json")
OUT_PATH = os.path.join(HERE, "EndgameData.lean")


def bits(x):
    return [i for i in range(7) if (x >> i) & 1]


def component_of_P(masks, i0):
    """Connected component of P-vertex i0 in the bipartite graph, as (pm, qm)."""
    pm, qm = 1 << i0, 0
    while True:
        npm, nqm = pm, qm
        for i in range(7):
            if (pm >> i) & 1:
                nqm |= masks[i] & 0x7F
        for i in range(7):
            if masks[i] & nqm:
                npm |= 1 << i
        if (npm, nqm) == (pm, qm):
            return pm, qm
        pm, qm = npm, nqm


def lst(xs):
    return "[" + ", ".join(str(x) for x in xs) + "]"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--stdout", action="store_true")
    args = ap.parse_args()

    with open(JSON_PATH, "rb") as fh:
        raw = fh.read()
    src_sha = hashlib.sha256(raw).hexdigest()
    cert = json.loads(raw.decode("utf-8"))
    cases = cert["cases"]

    out = []
    A = out.append
    A("/-")
    A("  EndgameData.lean -- GENERATED FILE, DO NOT EDIT BY HAND.")
    A("")
    A("  Produced by `lean/gen_endgame_data.py` from")
    A("    data/certificates/final_elimination_225.json")
    A("  SHA-256 of that source file:")
    A("    %s" % src_sha)
    A("")
    A("  Every field below is a verbatim transcription of the corresponding JSON")
    A("  field, except `sepP`/`sepQ`, which are derived from")
    A("  `graph.P_neighbourhood_bitmasks` and are re-checked by the Lean kernel in")
    A("  `Endgame.lean` (see `sepClosedB`), so nothing is trusted about them.")
    A("")
    A("  Encodings:")
    A("    masks   = graph.P_neighbourhood_bitmasks  (bit j set iff q_j is disjoint from p_i)")
    A("    side    = 0 for witness.side = \"P\", 1 for \"Q\"")
    A("    avoiding = (witness.pair_kind == \"avoiding\")")
    A("    nCyc    = length of witness.cyclic_adjacent_pairs_found")
    A("    sepP/sepQ = 7-bit masks of the P- and Q-vertices in the connected")
    A("                component of P-side witness.pair[0]")
    A("-/")
    A("import EndgameDefs")
    A("")
    A("namespace Heptagon")
    A("namespace Endgame")
    A("")
    A("/-- The 225 `(class_P, class_Q, graph)` combinations reaching the final filter. -/")
    A("def certificates : List Case := [")

    body = []
    for c in cases:
        g = c["graph"]
        w = c["witness"]
        masks = g["P_neighbourhood_bitmasks"]
        assert len(masks) == 7 and all(0 <= m < 128 for m in masks)
        i0 = w["pair"][0]
        sp, sq = component_of_P(masks, i0)
        side = {"P": 0, "Q": 1}[w["side"]]
        rec = (
            "  { caseId := %d, classP := %d, classQ := %d,\n"
            "    masks := %s, edges := %d,\n"
            "    degP := %s, degQ := %s,\n"
            "    compP := %s, compQ := %s,\n"
            "    side := %d, classUsed := %d, pairI := %d, pairJ := %d, avoiding := %s,\n"
            "    compOfI := %d, compOfJ := %d,\n"
            "    Ni := %s, Nj := %s, Aij := %s, Bji := %s,\n"
            "    nCyc := %d, sepP := %d, sepQ := %d }"
        ) % (
            c["case_id"], c["class_P"], c["class_Q"],
            lst(masks), g["edges"],
            lst(g["degree_sequence_P"]), lst(g["degree_sequence_Q"]),
            lst(g["components_P"]), lst(g["components_Q"]),
            side, w["class_used"], w["pair"][0], w["pair"][1],
            "true" if w["pair_kind"] == "avoiding" else "false",
            w["component_of_i"], w["component_of_j"],
            lst(w["N_i"]), lst(w["N_j"]), lst(w["A_i_minus_j"]), lst(w["B_j_minus_i"]),
            len(w["cyclic_adjacent_pairs_found"]), sp, sq,
        )
        body.append(rec)

    A(",\n".join(body))
    A("]")
    A("")
    A("end Endgame")
    A("end Heptagon")

    text = "\n".join(out) + "\n"
    if args.stdout:
        sys.stdout.write(text)
    else:
        with open(OUT_PATH, "w") as fh:
            fh.write(text)
        print("wrote %s (%d cases)" % (OUT_PATH, len(cases)))
        print("source  sha256: %s" % src_sha)
        print("emitted sha256: %s" % hashlib.sha256(text.encode()).hexdigest())


if __name__ == "__main__":
    main()
