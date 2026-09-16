// Does every candidate disjointness graph contain a forbidden pattern?
//
//   c++ -O2 -std=c++17 -o cover cover.cpp && ./cover patterns.txt
//
// Re-enumerates all 13,003,620 graphs of the I = 40 domain -- 7x7 bipartite,
// exactly 9 edges, no isolated side -- directly from that definition, and for
// each one checks that some relabelling of some pattern in `patterns.txt`
// occurs in it.  A pattern is a partial specification of the 49 (side of P,
// side of Q) pairs: `sup` says which pairs it constrains, `val` says whether
// each constrained pair is disjoint (bit set) or crossing (bit clear).  A graph
// `g` contains it when `(g & sup) == val`.
//
// This checks all 13,003,620 graphs, not the orbit representatives, so it does
// not depend on the orbit decomposition being right.
//
// Bit 7*(6-i) + j is set when side i of P is DISJOINT from side j of Q.

#include <cstdio>
#include <cstdint>
#include <vector>
#include <set>

static int PERM[14][7];
static int MAP[392][49];
static int NT = 0;
static std::vector<std::pair<uint64_t, uint64_t>> PAT;   // (sup, val), all images
static long long TOTAL = 0, COVERED = 0;
static uint64_t FIRSTBAD = 0;
static long long HITS[64];

static inline int POS(int i, int j) { return 7 * (6 - i) + j; }

static long long TRIES = 0, MAXTRIES = 0;
static void check(uint64_t g) {
    ++TOTAL;
    for (size_t k = 0; k < PAT.size(); ++k)
        if ((g & PAT[k].first) == PAT[k].second) {
            ++COVERED; TRIES += (long long)k + 1;
            if ((long long)k + 1 > MAXTRIES) MAXTRIES = k + 1;
            return;
        }
    TRIES += PAT.size();
    if (!FIRSTBAD) FIRSTBAD = g ? g : 1;
}

static void rec(int pos, int left, uint64_t g, int rows, int cols) {
    int needR = 7 - __builtin_popcount(rows), needC = 7 - __builtin_popcount(cols);
    if (needR > left || needC > left) return;
    if (49 - pos < left) return;
    if (left == 0) { check(g); return; }
    for (int p = pos; p <= 49 - left; ++p)
        rec(p + 1, left - 1, g | (1ULL << POS(p / 7, p % 7)),
            rows | (1 << (p / 7)), cols | (1 << (p % 7)));
}

int main(int argc, char** argv) {
    for (int s = 0; s < 2; ++s)
        for (int k = 0; k < 7; ++k)
            for (int i = 0; i < 7; ++i)
                PERM[s * 7 + k][i] = s ? ((k - i) % 7 + 7) % 7 : (i + k) % 7;
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

    if (argc < 2) { fprintf(stderr, "usage: cover patterns.txt\n"); return 2; }
    FILE* f = fopen(argv[1], "r");
    if (!f) { perror(argv[1]); return 2; }
    std::set<std::pair<uint64_t, uint64_t>> seen;
    // Each line: 49 characters over {., c, d}; position i*7 + j.
    //   '.' unconstrained   'c' the two sides cross   'd' they are disjoint
    char buf[256];
    int npat = 0;
    while (fgets(buf, sizeof buf, f)) {
        uint64_t sup = 0, val = 0; int n = 0;
        for (int t = 0; buf[t] && buf[t] != '\n'; ++t) {
            char ch = buf[t];
            if (ch == '.' || ch == 'c' || ch == 'd') {
                int i = n / 7, j = n % 7;
                if (ch != '.') { sup |= 1ULL << POS(i, j); if (ch == 'd') val |= 1ULL << POS(i, j); }
                ++n;
            }
        }
        if (n == 0) continue;
        if (n != 49) { fprintf(stderr, "pattern %d has %d cells\n", npat, n); return 2; }
        ++npat;
        for (int t = 0; t < NT; ++t) {
            uint64_t s2 = 0, v2 = 0, x = sup;
            while (x) { int b = __builtin_ctzll(x); x &= x - 1;
                        s2 |= 1ULL << MAP[t][b]; if (val >> b & 1) v2 |= 1ULL << MAP[t][b]; }
            seen.insert({s2, v2});
        }
    }
    fclose(f);
    PAT.assign(seen.begin(), seen.end());
    fprintf(stderr, "patterns    : %d  (%zu distinct relabellings)\n", npat, PAT.size());

    rec(0, 9, 0, 0, 0);
    fprintf(stderr, "domain      : %lld\n", TOTAL);
    fprintf(stderr, "covered     : %lld\n", COVERED);
    fprintf(stderr, "uncovered   : %lld\n", TOTAL - COVERED);
    fprintf(stderr, "images tried: mean %.1f, worst %lld (of %zu)\n",
            (double)TRIES / (double)TOTAL, MAXTRIES, PAT.size());
    return TOTAL == COVERED ? 0 : 1;
}
