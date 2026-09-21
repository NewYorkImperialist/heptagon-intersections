"""Explicit verification of (R2) -- AKR's own criterion -- at the directions the
cone construction produces, in the SIMULTANEOUS setting (several coincidences,
moving neighbours, Theorem-17-dragged vertices).  e9_directions proves (R2) at
one apex with all other points fixed; this checks it survives."""
import sys, random
sys.path.insert(0, '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, r3b

def run(gen, seed, n, name, nsamples=8):
    R = random.Random(seed)
    tot = pairs = ok = fig27c = 0
    tries = 0
    while tot < n and tries < 400*n:
        tries += 1
        g = gen(R)
        if g is None: continue
        cfg, _ = g; tot += 1
        alpha, fv = r3.direction_map(cfg)
        # Fig 27c: two coincidences whose P-vertices are adjacent
        Ps = sorted(i for i, j in cfg.coinc)
        if len(Ps) > 1 and any((a+1) % 7 == b or (b+1) % 7 == a
                               for a in Ps for b in Ps if a != b): fig27c += 1
        for _ in range(nsamples):
            vals = r3.sample_admissible(cfg, fv, R)
            if vals is None: continue
            for (i, j) in cfg.coinc:
                g2, kl = r3.r2_straddle(cfg, alpha, vals, i, j)
                pairs += 1; ok += g2
    print(f'{name:9s} configs {tot:3d}  (Fig-27c adjacent-coincidence: {fig27c})'
          f'   (R2) holds at {ok}/{pairs} (coincidence, direction) pairs')

if __name__ == '__main__':
    run(r3.gen,           909, 40, 'base')
    run(r3b.gen_deep,    1010, 30, 'deep')
    run(r3b.gen_anti_dep,1111, 30, 'antidep')
