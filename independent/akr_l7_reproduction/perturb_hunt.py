#!/usr/bin/env python3
"""
Local (hill-climbing) search in the space of 8-line arrangements, keeping the
side->line assignment fixed, aiming at
   (a) a realisation in which BOTH associated pairs conform to Lemma 5's
       hooking/hooked pattern -- the AKR Fig. 6 configuration (positive control);
   (b) a realisation in which both P-pairs are hooking or both are hooked
       -- a counterexample to Lemma 7.

AKR's Fig. 6 is drawn extremely elongated: two of the P-sides very nearly touch.
Uniform random arrangements therefore essentially never produce it, so we start
from realisations with one conforming pair (found by arr8/hunt) and perturb the
line coefficients, accepting moves that do not decrease the score.

Exact integer arithmetic throughout (arr8.analyse unchanged).
Usage: python3 perturb_hunt.py <seedfile.json> <iters> <seed> <out.json>
"""
import sys, json, random, time
import arr8

def score(r):
    if r is None:
        return -1
    s = r["status"]
    w1 = arr8.status_word((s["hooking1"], s["hooked1"]))
    w2 = arr8.status_word((s["hooking2"], s["hooked2"]))
    return (w1 != "neither") + (w2 != "neither")

def is_counterexample(r):
    s = r["status"]
    return (s["hooking1"] and s["hooking2"]) or (s["hooked1"] and s["hooked2"])

def main():
    src = sys.argv[1]
    iters = int(sys.argv[2]) if len(sys.argv) > 2 else 200000
    seed = int(sys.argv[3]) if len(sys.argv) > 3 else 1
    out = sys.argv[4] if len(sys.argv) > 4 else "perturb.json"
    rnd = random.Random(seed)
    data = json.load(open(src))
    seeds = (data.get("both_conforming", []) + data.get("counterexamples", [])
             + data.get("sample_realisations", []))
    if not seeds:
        # fall back: any realisation stored in an arr8 results file
        seeds = [{"lines": t["example_lines"], "assign": t["example_assign"]}
                 for t in data.get("types", [])]
    if not seeds:
        print("no seed configurations in", src); return
    best_conf = []; ces = []
    t0 = time.time(); restarts = 0
    while time.time() - t0 < iters:
        base = rnd.choice(seeds)
        lines = [tuple(map(int, L)) for L in base["lines"]]
        assign = tuple(base["assign"])
        X = arr8.prep(lines)
        cur = score(arr8.analyse(lines, assign, X)) if X else -1
        restarts += 1
        for step in range(20000):
            i = rnd.randrange(8); k = rnd.randrange(3)
            mag = max(1, abs(lines[i][k]) // rnd.choice([2, 5, 20, 100, 1000]))
            nl = list(lines[i]); nl[k] += rnd.randint(-mag, mag)
            if nl[0] == 0 and nl[1] == 0:
                continue
            cand = list(lines); cand[i] = tuple(nl)
            Xc = arr8.prep(cand)
            if Xc is None:
                continue
            r = arr8.analyse(cand, assign, Xc)
            sc = score(r)
            if sc >= cur:
                lines, cur = cand, sc
                if sc == 2:
                    rec = {"lines": lines, "assign": list(assign),
                           "status": r["status"], "axis": r["axis"],
                           "trace": {a: list(b) for a, b in r["trace"].items()}}
                    best_conf.append(rec)
                    if is_counterexample(r):
                        ces.append(rec)
                        json.dump({"counterexamples": ces,
                                   "both_conforming": best_conf[:50]},
                                  open(out, "w"), indent=1)
                        print("*** COUNTEREXAMPLE ***"); print(json.dumps(rec, indent=1))
                        return
                    print("both-conforming found after %.0fs (restart %d, step %d): %s"
                          % (time.time()-t0, restarts, step, r["status"]))
                    sys.stdout.flush()
                    break
            if time.time() - t0 > iters:
                break
    json.dump({"seconds": time.time()-t0, "restarts": restarts,
               "n_both_conforming": len(best_conf),
               "both_conforming": best_conf[:50],
               "n_counterexamples": len(ces), "counterexamples": ces},
              open(out, "w"), indent=1)
    print("done: %d both-conforming, %d counterexamples, %d restarts"
          % (len(best_conf), len(ces), restarts))

if __name__ == "__main__":
    main()
