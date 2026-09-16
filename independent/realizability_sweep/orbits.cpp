// Enumerate the I = 40 candidate domain and reduce it by relabelling symmetry.
//
// The domain is stated directly from its definition rather than taken from the
// project's pipeline: a candidate for I = 40 has a disjointness graph that is a
// 7x7 bipartite graph with exactly 9 edges (49 - 40) and no isolated side on
// either polygon.  Inclusion-exclusion over zero rows and columns gives
// 13,003,620, which is the project's domain count; this program re-derives the
// same number by enumeration, and is therefore also an independent check of it.
//
// Two configurations that differ only by relabelling -- rotating or reflecting
// either polygon's vertex cycle, or exchanging P with Q -- have disjointness
// graphs in the same orbit of a group of order 392, and one is realizable iff
// the other is.  This program emits one representative per orbit.
//
//   c++ -O2 -std=c++17 -o orbits orbits.cpp
//   ./orbits orbits.txt
//
// A graph is the tuple (g[0], ..., g[6]) of `P_neighbourhood_bitmasks`: bit j of
// g[i] is set when side i of P is DISJOINT from side j of Q, matching
// `indep_om.py`.  It is packed into a 49-bit word as bit 7*(6-i) + j, so that
// comparing words as integers is comparing the tuples lexicographically -- the
// same representative `independent/residual_realizability/run.py` would pick.

#include <cstdio>
#include <cstdint>
#include <cstdlib>
#include <vector>
#include <algorithm>

static int PERM[14][7];        // the 14 rotations and reflections of Z_7
static int MAP[392][49];       // each of the 392 relabellings, as a bit permutation
static int NT = 0;

static long long TOTAL = 0;
static std::vector<uint64_t> REPS;

// Is `g` the lexicographic minimum of its orbit?  Early-exits on the first
// strictly smaller image, which is the common case.
static inline bool is_canonical(uint64_t g) {
    for (int t = 0; t < NT; ++t) {
        uint64_t h = 0, x = g;
        while (x) {
            int b = __builtin_ctzll(x);
            x &= x - 1;
            h |= 1ULL << MAP[t][b];
        }
        if (h < g) return false;
    }
    return true;
}

static inline int POS(int i, int j) { return 7 * (6 - i) + j; }

static void rec(int pos, int left, uint64_t g, int rows, int cols) {
    int needR = 7 - __builtin_popcount(rows), needC = 7 - __builtin_popcount(cols);
    if (needR > left || needC > left) return;          // cannot cover in time
    if (49 - pos < left) return;                        // not enough places left
    if (left == 0) {
        ++TOTAL;
        if (is_canonical(g)) REPS.push_back(g);
        return;
    }
    for (int p = pos; p <= 49 - left; ++p)
        rec(p + 1, left - 1, g | (1ULL << POS(p / 7, p % 7)), rows | (1 << (p / 7)), cols | (1 << (p % 7)));
}

int main(int argc, char** argv) {
    for (int s = 0; s < 2; ++s)
        for (int k = 0; k < 7; ++k) {
            for (int i = 0; i < 7; ++i)
                PERM[s * 7 + k][i] = s ? ((k - i) % 7 + 7) % 7 : (i + k) % 7;
        }
    for (int a = 0; a < 14; ++a)
        for (int b = 0; b < 14; ++b)
            for (int sw = 0; sw < 2; ++sw) {
                for (int i = 0; i < 7; ++i)
                    for (int j = 0; j < 7; ++j) {
                        int u = PERM[a][i], v = PERM[b][j];
                        MAP[NT][POS(i, j)] = sw ? POS(v, u) : POS(u, v);
                    }
                ++NT;
            }
    if (NT != 392) { fprintf(stderr, "bad symmetry count %d\n", NT); return 1; }

    rec(0, 9, 0, 0, 0);
    fprintf(stderr, "domain      : %lld\n", TOTAL);
    fprintf(stderr, "orbits      : %zu\n", REPS.size());

    if (argc > 1) {
        FILE* f = fopen(argv[1], "w");
        if (!f) { perror(argv[1]); return 1; }
        std::sort(REPS.begin(), REPS.end());
        for (uint64_t g : REPS) {
            for (int i = 0; i < 7; ++i)
                fprintf(f, "%d%c", (int)((g >> (7 * (6 - i))) & 127), i == 6 ? '\n' : ' ');
        }
        fclose(f);
    }
    return 0;
}
