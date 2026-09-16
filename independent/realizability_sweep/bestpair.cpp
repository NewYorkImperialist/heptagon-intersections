// Find the cheapest covering subfamily among the pooled minimal patterns.
//
//   c++ -O2 -std=c++17 -o bestpair bestpair.cpp && ./bestpair pool.txt orbits.txt
//
// `pool.txt` holds one pattern per line in the 49-character `.cd` form.  For
// each, this computes the set of orbit representatives it covers (under any of
// the 392 relabellings), then reports the single best pattern, the best pair,
// and the best triple, ranked by the number of distinct relabelled images the
// family has -- which is what drives the size of the covering refutation --
// and then by the total number of constrained side pairs.

#include <cstdio>
#include <cstdint>
#include <vector>
#include <set>
#include <algorithm>

static int PERM[14][7], MAP[392][49], NT = 0;
static inline int POS(int i, int j) { return 7 * (6 - i) + j; }

int main(int argc, char** argv) {
    for (int s = 0; s < 2; ++s)
        for (int k = 0; k < 7; ++k)
            for (int i = 0; i < 7; ++i)
                PERM[s*7+k][i] = s ? ((k - i) % 7 + 7) % 7 : (i + k) % 7;
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
    if (argc < 3) { fprintf(stderr, "usage: bestpair pool.txt orbits.txt\n"); return 2; }

    std::vector<uint64_t> G;
    { FILE* f = fopen(argv[2], "r"); int r[7];
      while (fscanf(f, "%d %d %d %d %d %d %d", r, r+1, r+2, r+3, r+4, r+5, r+6) == 7) {
          uint64_t g = 0;
          for (int i = 0; i < 7; ++i)
              for (int j = 0; j < 7; ++j) if (r[i] >> j & 1) g |= 1ULL << POS(i, j);
          G.push_back(g);
      }
      fclose(f); }
    const size_t NG = G.size(), W = (NG + 63) / 64;
    fprintf(stderr, "orbits: %zu\n", NG);

    struct Pat { int size, images; std::vector<uint64_t> cov; size_t pop; char txt[64]; };
    std::vector<Pat> P;
    { FILE* f = fopen(argv[1], "r"); char buf[256];
      while (fgets(buf, sizeof buf, f)) {
          uint64_t sup = 0, val = 0; int n = 0, sz = 0;
          for (int t = 0; buf[t] && buf[t] != '\n'; ++t) {
              char c = buf[t];
              if (c == '.' || c == 'c' || c == 'd') {
                  if (c != '.') { sup |= 1ULL << POS(n/7, n%7); ++sz;
                                  if (c == 'd') val |= 1ULL << POS(n/7, n%7); }
                  ++n;
              }
          }
          if (n != 49) continue;
          std::set<std::pair<uint64_t,uint64_t>> im;
          for (int t = 0; t < NT; ++t) {
              uint64_t s2 = 0, v2 = 0, x = sup;
              while (x) { int b = __builtin_ctzll(x); x &= x-1;
                          s2 |= 1ULL << MAP[t][b]; if (val >> b & 1) v2 |= 1ULL << MAP[t][b]; }
              im.insert({s2, v2});
          }
          Pat p; p.size = sz; p.images = (int)im.size(); p.cov.assign(W, 0); p.pop = 0;
          std::vector<std::pair<uint64_t,uint64_t>> IM(im.begin(), im.end());
          for (size_t i = 0; i < NG; ++i)
              for (auto& q : IM) if ((G[i] & q.first) == q.second) {
                  p.cov[i/64] |= 1ULL << (i%64); ++p.pop; break; }
          snprintf(p.txt, sizeof p.txt, "size %d, %d images, covers %zu", sz, p.images, p.pop);
          P.push_back(std::move(p));
      }
      fclose(f); }
    fprintf(stderr, "pooled patterns: %zu\n", P.size());
    std::sort(P.begin(), P.end(), [](const Pat& a, const Pat& b){ return a.pop > b.pop; });
    fprintf(stderr, "best single : %s\n", P.empty() ? "-" : P[0].txt);

    long long bestImgs = -1; size_t bi = 0, bj = 0;
    for (size_t i = 0; i < P.size(); ++i)
        for (size_t j = i; j < P.size(); ++j) {
            bool full = true;
            for (size_t w = 0; w < W && full; ++w) {
                uint64_t got = P[i].cov[w] | P[j].cov[w];
                uint64_t need = (w + 1) * 64 <= NG ? ~0ULL : ((1ULL << (NG % 64)) - 1);
                if ((got & need) != need) full = false;
            }
            if (!full) continue;
            long long imgs = P[i].images + (i == j ? 0 : P[j].images);
            if (bestImgs < 0 || imgs < bestImgs) { bestImgs = imgs; bi = i; bj = j; }
        }
    if (bestImgs < 0) { fprintf(stderr, "no covering pair in the pool\n"); return 1; }
    fprintf(stderr, "best pair   : %lld images total\n  A: %s\n  B: %s\n",
            bestImgs, P[bi].txt, P[bj].txt);
    printf("%zu %zu\n", bi, bj);
    return 0;
}
