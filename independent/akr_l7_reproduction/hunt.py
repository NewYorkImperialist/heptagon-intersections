#!/usr/bin/env python3
"""
Targeted search, on top of arr8.py, for the two configurations that matter most:

  (1) a realisation in which BOTH associated pairs conform to the hooking/hooked
      pattern of Lemma 5 -- i.e. neither pair is "neither".  AKR report exactly
      one such configuration (their Fig. 6, one pair hooking and one hooked).
      Finding it is the positive control for the whole encoding.

  (2) a realisation in which both P-pairs are hooking, or both are hooked --
      a counterexample to Lemma 7.

Uniform random integer lines (arr8.py's sampler) produce mostly "fat" arrangements.
Here the line coefficients are drawn on a log scale so that very elongated /
nearly-degenerate arrangements, like the one drawn in AKR's Fig. 6, are reached.
Exact integer arithmetic throughout (arr8.analyse is reused unchanged).

Usage: python3 hunt.py <trials> <seed> <outfile>
"""
import sys, random, json, time
import arr8

def scaled_line(rnd):
    def c():
        s = rnd.choice([1, 1, 2, 3, 4, 5, 6])          # decimal magnitude
        v = rnd.randint(1, 10 ** s)
        return v if rnd.random() < 0.5 else -v
    while True:
        A, B, C = c(), c(), c()
        if A or B:
            return (A, B, C)

def main():
    trials = int(sys.argv[1]) if len(sys.argv) > 1 else 5000
    seed = int(sys.argv[2]) if len(sys.argv) > 2 else 1
    out = sys.argv[3] if len(sys.argv) > 3 else "hunt.json"
    rnd = random.Random(seed)
    reps = arr8.assignment_classes()
    sample = []           # a sample of realisations, for seeding perturb_hunt
    found_conf = []       # both pairs conform
    found_both = []       # both hooking or both hooked  (counterexample)
    stats = {}
    n_arr = n_hit = 0
    t0 = time.time()
    while n_arr < trials:
        lines = [scaled_line(rnd) for _ in range(8)]
        X = arr8.prep(lines)
        if X is None:
            continue
        n_arr += 1
        for p in reps:
            r = arr8.analyse(lines, p, X)
            if r is None:
                continue
            n_hit += 1
            s = r["status"]
            w1 = arr8.status_word((s["hooking1"], s["hooked1"]))
            w2 = arr8.status_word((s["hooking2"], s["hooked2"]))
            stats[tuple(sorted((w1, w2)))] = stats.get(tuple(sorted((w1, w2))), 0) + 1
            if len(sample) < 400 and (w1 != "neither" or w2 != "neither"):
                sample.append({"lines": lines, "assign": list(p),
                               "words": [w1, w2]})
            if w1 != "neither" and w2 != "neither":
                found_conf.append({"lines": lines, "assign": list(p),
                                   "status": s, "axis": r["axis"],
                                   "words": [w1, w2],
                                   "trace": {k: list(v) for k, v in r["trace"].items()}})
            if (s["hooking1"] and s["hooking2"]) or (s["hooked1"] and s["hooked2"]):
                found_both.append({"lines": lines, "assign": list(p),
                                   "status": s, "axis": r["axis"],
                                   "trace": {k: list(v) for k, v in r["trace"].items()}})
        if n_arr % 500 == 0:
            print("  %6d arr, %6d realisations, %d both-conforming, %d COUNTEREXAMPLES (%.0fs)"
                  % (n_arr, n_hit, len(found_conf), len(found_both), time.time()-t0))
            sys.stdout.flush()
    print("\narrangements: %d   realisations: %d" % (n_arr, n_hit))
    print("status-pair histogram over realisations:")
    for k, v in sorted(stats.items()):
        print("   {%-8s, %-8s} : %d" % (k[0], k[1], v))
    print("both-conforming realisations (the Fig. 6 case): %d" % len(found_conf))
    print("BOTH-HOOKING / BOTH-HOOKED realisations       : %d" % len(found_both))
    json.dump({"n_arrangements": n_arr, "n_realisations": n_hit, "seed": seed,
               "status_histogram": {str(k): v for k, v in sorted(stats.items())},
               "sample_realisations": sample,
               "both_conforming": found_conf[:20],
               "n_both_conforming": len(found_conf),
               "counterexamples": found_both[:20],
               "n_counterexamples": len(found_both)},
              open(out, "w"), indent=1)
    print("wrote", out)

if __name__ == "__main__":
    main()
