// ===========================================================================
// reduction_a7opt.cpp -- NO-A7 EXPERIMENT (subagent E).
//
// DERIVED FROM independent/implementation_b/reduction.cpp (Implementation B),
// which is READ-ONLY and was copied, not modified.  Two changes only:
//
//   (1) the AKR Lemma 7 (H bipartite) filter is now OPTIONAL, controlled by
//       --a7=on / --a7=off.  Nothing else about it changed.
//   (2) the FINAL avoiding-pair AKR Lemma 5 filter, which Implementation B
//       deliberately stopped short of, is now implemented, using the
//       avoiding_pairs field of the canonical profile JSON and the SAME
//       l5_consecutive predicate (AKR Lemma 5's neighbour-adjacency form) that
//       is already applied to consecutive pairs.
//
// No filter was weakened, added or replaced.  Cerny Lemma 3 is still NOT
// implemented and is NOT used.
//
// Original header follows.
// ---------------------------------------------------------------------------
// Implementation B -- independent reimplementation of the finite reduction
// for the f(7,7) <= 38 argument, up to (but NOT including) the final
// avoiding-pair AKR Lemma 5 filter.
//
// Written from SPEC.md.  Section numbers below refer to SPEC.md.
//
// Deliberate differences from Implementation A (Python):
//   * language: C++ vs Python
//   * enumeration: over Q-side columns, partitioned by an explicit degree
//     sequence, vs A's P-side recursion with a running edge budget
//   * graph key: packed 49-bit u64 bitboard vs A's tuple of 7 ints
//   * components: iterative bitmask closure vs A's union-find
//   * H-bipartiteness: union-find WITH PARITY vs A's DFS 2-colouring
//   * consecutive AKR L5: cyclic bitmask rotation vs A's double loop
//   * Cerny L2: enumeration of systems of distinct representatives vs A's
//     iteration over all C(7,4) subsets of Q-sides
//
// Cerny Lemma 3 is NOT implemented (SPEC.md sec. 6).
// The avoiding-pair AKR L5 filter is NOT implemented (SPEC.md sec. 6).
//
// Build: c++ -O2 -std=c++17 -o reduction reduction.cpp
// Run:   ./reduction profiles.txt out.json
//        ./reduction --test
// ===========================================================================
#include <algorithm>
#include <array>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

static const int FULL = 127;  // all seven sides

static inline int pc(int m) { return __builtin_popcount((unsigned)m); }

// ---------------------------------------------------------------------------
// Profiles (SPEC.md sec. 3, sec. 4)
// ---------------------------------------------------------------------------
struct Profile {
    int index;
    int mMask;                 // M_set as a 7-bit mask
    std::vector<int> windows;  // Cerny L2 windows
    std::vector<int> mcs;      // maximal crossing sets, as 7-bit masks
    std::vector<std::pair<int, int>> av;  // avoiding pairs (i<j, non-adjacent)
};
static std::vector<Profile> PROF;

static void loadProfiles(const std::string& path) {
    std::ifstream in(path);
    if (!in) { std::cerr << "cannot open " << path << "\n"; exit(2); }
    int n; in >> n;
    for (int c = 0; c < n; ++c) {
        Profile p; int nw, nm;
        in >> p.index >> p.mMask >> nw;
        for (int t = 0; t < nw; ++t) { int w; in >> w; p.windows.push_back(w); }
        in >> nm;
        for (int t = 0; t < nm; ++t) { int m; in >> m; p.mcs.push_back(m); }
        int na; in >> na;
        for (int t = 0; t < na; ++t) {
            int i, j; in >> i >> j;
            p.av.push_back({i, j});
        }
        PROF.push_back(p);
    }
    // Consistency check required by SPEC.md sec. 3: the maximal crossing sets
    // must be exactly the complements of the single elements of M_set.
    for (const auto& p : PROF) {
        std::vector<int> want;
        for (int m = 0; m < 7; ++m)
            if (p.mMask >> m & 1) want.push_back(FULL ^ (1 << m));
        std::vector<int> got = p.mcs;
        std::sort(want.begin(), want.end());
        std::sort(got.begin(), got.end());
        if (want != got) {
            std::cerr << "PROFILE CONSISTENCY FAILURE for class " << p.index
                      << ": maximal crossing sets are not the complements of "
                         "the M_set singletons\n";
            exit(3);
        }
    }
    // Consistency check on the avoiding pairs: each must be a NON-ADJACENT
    // unordered pair of distinct sides.  (The canonical JSON's own definition.)
    for (const auto& p : PROF) {
        for (auto [i, j] : p.av) {
            int d = ((j - i) % 7 + 7) % 7;
            if (i < 0 || i > 6 || j < 0 || j > 6 || i >= j || d == 0 || d == 1 || d == 6) {
                std::cerr << "AVOIDING-PAIR CONSISTENCY FAILURE for class "
                          << p.index << ": (" << i << "," << j << ")\n";
                exit(3);
            }
        }
    }
    std::cerr << "loaded " << PROF.size()
              << " profiles; M_set/maximal-crossing-set consistency OK; "
                 "avoiding-pair format OK\n";
}

// ---------------------------------------------------------------------------
// SPEC.md sec. 1 -- consecutive-pair AKR Lemma 5
//
// For a consecutive pair in different components there must exist
// j in N(p_i)\N(p_{i+1}) cyclically adjacent (mod 7) to some
// k in N(p_{i+1})\N(p_i).  Implemented by cyclic rotation of the bitmask.
// ---------------------------------------------------------------------------
static inline int rotL(int m) { return ((m << 1) | (m >> 6)) & FULL; }
static inline int rotR(int m) { return ((m >> 1) | (m << 6)) & FULL; }

static inline bool l5_consecutive(int Na, int Nb) {
    int A = Na & ~Nb & FULL;
    int B = Nb & ~Na & FULL;
    return ((rotL(A) | rotR(A)) & B) != 0;
}

// ---------------------------------------------------------------------------
// Components by iterative bitmask closure (SPEC.md sec. 0)
// ---------------------------------------------------------------------------
static void components(const int row[7], const int col[7], int cp[7], int cq[7]) {
    for (int i = 0; i < 7; ++i) { cp[i] = -1; cq[i] = -1; }
    int id = 0;
    for (int s = 0; s < 7; ++s) {
        if (cp[s] != -1) continue;
        int Pm = 1 << s, Qm = 0;
        for (;;) {
            int Qn = Qm;
            for (int i = 0; i < 7; ++i) if (Pm >> i & 1) Qn |= row[i];
            int Pn = Pm;
            for (int j = 0; j < 7; ++j) if (Qn >> j & 1) Pn |= col[j];
            if (Qn == Qm && Pn == Pm) break;
            Qm = Qn; Pm = Pn;
        }
        for (int i = 0; i < 7; ++i) if (Pm >> i & 1) cp[i] = id;
        for (int j = 0; j < 7; ++j) if (Qm >> j & 1) cq[j] = id;
        ++id;
    }
}

// ---------------------------------------------------------------------------
// SPEC.md sec. 2 -- AKR Lemma 7 => H is bipartite
//
// V(H) = { i : comp[i] != comp[i+1] }
// i ~ k  iff (k-i) mod 7 not in {0,1,6}  and the four sides
//            p_i, p_{i+1}, p_k, p_{k+1} lie in four distinct components.
// Bipartiteness by union-find with parity.
// ---------------------------------------------------------------------------
struct DsuParity {
    int par[7], rel[7];
    void init() { for (int i = 0; i < 7; ++i) { par[i] = i; rel[i] = 0; } }
    // returns (root, parity to root)
    std::pair<int, int> find(int a) {
        int p = 0, x = a;
        while (par[x] != x) { p ^= rel[x]; x = par[x]; }
        // path compression
        int y = a, py = p;
        while (par[y] != y) { int ny = par[y], nr = rel[y]; par[y] = x; int old = py; rel[y] = old; py = old ^ nr; y = ny; }
        return {x, p};
    }
    // join a and b with required parity 1 (different colours); false on conflict
    bool unite(int a, int b) {
        auto [ra, pa] = find(a);
        auto [rb, pb] = find(b);
        if (ra == rb) return (pa ^ pb) == 1;
        par[ra] = rb;
        rel[ra] = pa ^ pb ^ 1;
        return true;
    }
};

static bool h_bipartite(const int comp[7]) {
    bool inV[7];
    for (int i = 0; i < 7; ++i) inV[i] = (comp[i] != comp[(i + 1) % 7]);
    DsuParity d; d.init();
    for (int i = 0; i < 7; ++i) {
        if (!inV[i]) continue;
        for (int k = i + 1; k < 7; ++k) {
            if (!inV[k]) continue;
            int diff = (k - i) % 7;
            if (diff == 0 || diff == 1 || diff == 6) continue;  // share a side
            int a = comp[i], b = comp[(i + 1) % 7], c = comp[k], e = comp[(k + 1) % 7];
            // four distinct components?
            if (a == b || a == c || a == e || b == c || b == e || c == e) continue;
            if (!d.unite(i, k)) return false;
        }
    }
    return true;
}

// ---------------------------------------------------------------------------
// SPEC.md sec. 3 -- crossing-set compatibility
//
// For class `a` on P: for every j, complement(N(q_j)) must be contained in
// some maximal crossing set of `a`.  `opp` holds the OTHER side's
// neighbourhoods (columns when testing a P-class).
// ---------------------------------------------------------------------------
static inline bool compatible(const Profile& p, const int opp[7]) {
    for (int j = 0; j < 7; ++j) {
        int x = (~opp[j]) & FULL;          // sides crossed by this segment
        bool ok = false;
        for (int C : p.mcs) if ((x & ~C & FULL) == 0) { ok = true; break; }
        if (!ok) return false;
    }
    return true;
}

// ---------------------------------------------------------------------------
// SPEC.md sec. 4 -- Cerny Lemma 2
//
// For each window w: reject if four DISTINCT sides j_0..j_3 exist with
// j_t in N(p_{w+t}) and N(p_{w+t}) & {j_0..j_3} == {j_t} for all t, i.e. the
// induced 4x4 subgraph is EXACTLY a perfect matching.
// Enumerated as systems of distinct representatives.
// ---------------------------------------------------------------------------
static bool l2_ok(const Profile& p, const int nb[7]) {
    for (int w : p.windows) {
        int s[4];
        for (int t = 0; t < 4; ++t) s[t] = (w + t) % 7;
        for (int j0 = 0; j0 < 7; ++j0) {
            if (!(nb[s[0]] >> j0 & 1)) continue;
            for (int j1 = 0; j1 < 7; ++j1) {
                if (j1 == j0 || !(nb[s[1]] >> j1 & 1)) continue;
                for (int j2 = 0; j2 < 7; ++j2) {
                    if (j2 == j0 || j2 == j1 || !(nb[s[2]] >> j2 & 1)) continue;
                    for (int j3 = 0; j3 < 7; ++j3) {
                        if (j3 == j0 || j3 == j1 || j3 == j2) continue;
                        if (!(nb[s[3]] >> j3 & 1)) continue;
                        int S = (1 << j0) | (1 << j1) | (1 << j2) | (1 << j3);
                        bool induced = true;
                        for (int t = 0; t < 4; ++t)
                            if (pc(nb[s[t]] & S) != 1) { induced = false; break; }
                        if (induced) return false;   // forbidden pattern present
                    }
                }
            }
        }
    }
    return true;
}

// ---------------------------------------------------------------------------
// Enumeration (SPEC.md sec. 0) -- over Q-side columns, by degree sequence
// ---------------------------------------------------------------------------
static long long CNT_TOTAL = 0, CNT_L5 = 0, CNT_L7 = 0;
static long long CNT_COMPAT = 0, CNT_L2 = 0, CNT_TRIPLES = 0;
static long long CNT_AVSURV = 0, CNT_AVGRAPH = 0;
// diagnostic only: (H bipartite on P, H bipartite on Q) distribution per stage
static long long BIPSTAT[6][4];   // stage x (2*bipP + bipQ)
static inline void bipstat(int stage, bool bp, bool bq) {
    BIPSTAT[stage][(bp ? 2 : 0) | (bq ? 1 : 0)]++;
}

// --- NEW: switch for AKR Lemma 7 -------------------------------------------
static bool USE_A7 = true;

// ---------------------------------------------------------------------------
// NEW -- final avoiding-pair AKR Lemma 5 filter.
//
// For class `p` sitting on this polygon with side-neighbourhoods nb[] and
// components comp[]: every avoiding pair (i,j) of the class whose two sides
// lie in DIFFERENT components must satisfy the same neighbour-adjacency
// condition l5_consecutive already used for consecutive pairs.
// ---------------------------------------------------------------------------
static inline bool av_ok(const Profile& p, const int nb[7], const int comp[7]) {
    for (auto [i, j] : p.av)
        if (comp[i] != comp[j] && !l5_consecutive(nb[i], nb[j])) return false;
    return true;
}

struct Triple { int a, b; uint64_t key; std::array<int, 7> rows; };
static std::vector<Triple> TRIPLES;

// residual triples that survive EVERYTHING including the avoiding-pair filter
struct Surv {
    int a, b;
    std::array<int, 7> rows, cols, cp, cq;
    int ncp, ncq;
    bool hbipP, hbipQ;
};
static std::vector<Surv> SURV;
static std::vector<std::array<int, 7>> DEGDIST_P, DEGDIST_Q;

static std::vector<int> SUBSETS[4];   // subsets of {0..6} by popcount 1..3

static int degv[7];      // chosen degree of each Q-side
static int col[7];       // Q-side neighbourhoods being built

static void handleGraph() {
    // derive P-side neighbourhoods (rows) from the columns
    int row[7] = {0, 0, 0, 0, 0, 0, 0};
    for (int j = 0; j < 7; ++j)
        for (int i = 0; i < 7; ++i)
            if (col[j] >> i & 1) row[i] |= 1 << j;
    for (int i = 0; i < 7; ++i) if (row[i] == 0) return;   // min degree >= 1

    ++CNT_TOTAL;

    int cp[7], cq[7];
    components(row, col, cp, cq);

    // SPEC sec. 1 -- consecutive AKR L5, both polygons
    for (int i = 0; i < 7; ++i) {
        int k = (i + 1) % 7;
        if (cp[i] != cp[k] && !l5_consecutive(row[i], row[k])) return;
    }
    for (int j = 0; j < 7; ++j) {
        int k = (j + 1) % 7;
        if (cq[j] != cq[k] && !l5_consecutive(col[j], col[k])) return;
    }
    ++CNT_L5;

    // SPEC sec. 2 -- H bipartite, both polygons.  OPTIONAL in this experiment.
    bool bipP = h_bipartite(cp), bipQ = h_bipartite(cq);
    bipstat(0, bipP, bipQ);
    if (USE_A7 && (!bipP || !bipQ)) return;
    ++CNT_L7;

    // SPEC sec. 3 -- crossing-set compatibility
    std::vector<int> okP, okQ;
    for (const auto& p : PROF) if (compatible(p, col)) okP.push_back(p.index);
    for (const auto& p : PROF) if (compatible(p, row)) okQ.push_back(p.index);
    if (okP.empty() || okQ.empty()) return;
    ++CNT_COMPAT;
    bipstat(1, bipP, bipQ);

    // SPEC sec. 4 -- Cerny Lemma 2
    std::vector<int> okP2, okQ2;
    for (int a : okP) if (l2_ok(PROF[a], row)) okP2.push_back(a);
    for (int b : okQ) if (l2_ok(PROF[b], col)) okQ2.push_back(b);
    if (okP2.empty() || okQ2.empty()) return;
    ++CNT_L2;
    bipstat(2, bipP, bipQ);

    uint64_t key = 0;
    for (int i = 0; i < 7; ++i) key |= (uint64_t)(unsigned)row[i] << (7 * i);
    std::array<int, 7> rr{}, dp{}, dq{};
    for (int i = 0; i < 7; ++i) rr[i] = row[i];
    for (int i = 0; i < 7; ++i) dp[i] = pc(row[i]);
    for (int j = 0; j < 7; ++j) dq[j] = pc(col[j]);
    std::sort(dp.begin(), dp.end(), std::greater<int>());
    std::sort(dq.begin(), dq.end(), std::greater<int>());
    DEGDIST_P.push_back(dp);
    DEGDIST_Q.push_back(dq);

    for (int a : okP2)
        for (int b : okQ2) { TRIPLES.push_back({a, b, key, rr}); ++CNT_TRIPLES; }

    // --- NEW: final avoiding-pair AKR Lemma 5 filter -----------------------
    std::vector<int> okP3, okQ3;
    for (int a : okP2) if (av_ok(PROF[a], row, cp)) okP3.push_back(a);
    for (int b : okQ2) if (av_ok(PROF[b], col, cq)) okQ3.push_back(b);
    if (okP3.empty() || okQ3.empty()) return;
    ++CNT_AVGRAPH;
    bipstat(3, bipP, bipQ);
    std::array<int, 7> cc{}, ccp{}, ccq{};
    for (int j = 0; j < 7; ++j) cc[j] = col[j];
    for (int i = 0; i < 7; ++i) ccp[i] = cp[i];
    for (int j = 0; j < 7; ++j) ccq[j] = cq[j];
    int ncp = 0, ncq = 0;
    for (int i = 0; i < 7; ++i) ncp = std::max(ncp, cp[i] + 1);
    for (int j = 0; j < 7; ++j) ncq = std::max(ncq, cq[j] + 1);
    for (int a : okP3)
        for (int b : okQ3) {
            SURV.push_back({a, b, rr, cc, ccp, ccq, ncp, ncq, bipP, bipQ});
            ++CNT_AVSURV;
        }
}

static void dfs(int j, int coveredP, int remaining) {
    if (pc(coveredP) + remaining < 7) return;   // cannot still cover every P-side
    if (j == 7) { handleGraph(); return; }
    for (int m : SUBSETS[degv[j]]) {
        col[j] = m;
        dfs(j + 1, coveredP | m, remaining - degv[j]);
    }
    col[j] = 0;
}

static void enumerate() {
    for (int s = 1; s <= 3; ++s)
        for (int m = 1; m < 128; ++m)
            if (pc(m) == s) SUBSETS[s].push_back(m);

    // degree sequences on the Q side: 7 positive integers summing to 9
    //   -> one 3 and six 1s, or two 2s and five 1s
    for (int t = 0; t < 7; ++t) {                 // (3,1,1,1,1,1,1)
        for (int j = 0; j < 7; ++j) degv[j] = 1;
        degv[t] = 3;
        std::memset(col, 0, sizeof col);
        dfs(0, 0, 9);
    }
    for (int t1 = 0; t1 < 7; ++t1)                // (2,2,1,1,1,1,1)
        for (int t2 = t1 + 1; t2 < 7; ++t2) {
            for (int j = 0; j < 7; ++j) degv[j] = 1;
            degv[t1] = 2; degv[t2] = 2;
            std::memset(col, 0, sizeof col);
            dfs(0, 0, 9);
        }
}

// ---------------------------------------------------------------------------
// Adversarial unit tests
// ---------------------------------------------------------------------------
static int failures = 0;
static void check(const char* name, bool got, bool want) {
    bool ok = (got == want);
    std::cout << "  [" << (ok ? "PASS" : "FAIL") << "] " << name
              << "  (got " << got << ", want " << want << ")\n";
    if (!ok) ++failures;
}

static void runTests() {
    std::cout << "SPEC sec.1  consecutive AKR Lemma 5\n";
    // N(p_i)={0}, N(p_{i+1})={1}: 0 and 1 are cyclically adjacent -> satisfied
    check("L5 satisfied: {0} vs {1}", l5_consecutive(1 << 0, 1 << 1), true);
    // {0} vs {3}: 0 is adjacent only to 1 and 6 -> fails
    check("L5 fails: {0} vs {3}", l5_consecutive(1 << 0, 1 << 3), false);
    // wrap-around: 0 and 6 are adjacent mod 7
    check("L5 satisfied across wrap: {0} vs {6}", l5_consecutive(1 << 0, 1 << 6), true);
    // {3} vs {5,6} -- the certificate's case 0 witness: must FAIL
    check("L5 fails: {3} vs {5,6} (certificate case 0)",
          l5_consecutive(1 << 3, (1 << 5) | (1 << 6)), false);
    // shared neighbour is removed by the set difference
    check("L5 fails: {0,1} vs {0,1} (differences empty)",
          l5_consecutive(3, 3), false);

    std::cout << "SPEC sec.2  H bipartite\n";
    {   // all seven sides in distinct components: H is dense, contains odd cycles
        int comp[7] = {0, 1, 2, 3, 4, 5, 6};
        check("H has an odd cycle when all 7 sides are in distinct components",
              h_bipartite(comp), false);
    }
    {   // H edges 1-5 and 3-6 only: a matching, hence bipartite
        int comp[7] = {0, 0, 1, 1, 2, 2, 3};
        check("H is a matching -> bipartite", h_bipartite(comp), true);
    }
    {   // no vertex straddles two components -> V(H) empty -> vacuously bipartite
        int comp[7] = {0, 0, 0, 0, 0, 0, 0};
        check("H empty -> bipartite", h_bipartite(comp), true);
    }
    {   // two isolated vertices, no edge (only 2 distinct components)
        int comp[7] = {0, 0, 0, 1, 1, 1, 1};
        check("H isolated vertices -> bipartite", h_bipartite(comp), true);
    }

    std::cout << "SPEC sec.3  crossing-set compatibility\n";
    {
        const Profile& p12 = PROF[12];   // M_set = {0,2,3,4,6}
        int opp[7];
        for (int j = 0; j < 7; ++j) opp[j] = 1 << 0;   // every N(q_j) = {0}, 0 in M
        check("compatible: every N(q_j)={0}, 0 in M_set", compatible(p12, opp), true);
        for (int j = 0; j < 7; ++j) opp[j] = 1 << 1;   // 1 not in M_set
        check("incompatible: every N(q_j)={1}, 1 not in M_set",
              compatible(p12, opp), false);
        for (int j = 0; j < 7; ++j) opp[j] = 1 << 0;
        opp[4] = 1 << 5;                               // 5 not in M_set
        check("incompatible: one bad column suffices", compatible(p12, opp), false);
    }

    std::cout << "SPEC sec.4  Cerny Lemma 2\n";
    {
        // NOTE ON TEST DESIGN.  An earlier version of these tests used the real
        // class 12, whose windows are {0,2,3}.  Fixtures that were "safe" on
        // window 0 accidentally formed an induced perfect matching on window 3
        // via the untouched sides 4,5,6, so three tests failed.  The
        // IMPLEMENTATION was correct and was not changed; the TESTS were.  To
        // isolate the predicate we use a synthetic profile with a single
        // window, then re-test the real class 12 separately.
        Profile one; one.index = -1; one.mMask = 0; one.windows = {0};
        // window 0 covers sides 0,1,2,3; sides 4,5,6 are irrelevant here.

        int a[7] = {1 << 0, 1 << 1, 1 << 2, 1 << 3, 0, 0, 0};
        check("C2 VIOLATED: sides 0-3 form an induced perfect matching",
              l2_ok(one, a), false);

        int b[7] = {1 << 0, 1 << 0, 1 << 0, 1 << 0, 0, 0, 0};
        check("C2 satisfied: all four sides share one neighbour, no SDR",
              l2_ok(one, b), true);

        int c[7] = {3, 3, 3, 3, 0, 0, 0};
        check("C2 satisfied: only two candidate Q-sides for four P-sides",
              l2_ok(one, c), true);

        int d[7] = {1 << 0, 1 << 1, 1 << 2, (1 << 3) | (1 << 0), 0, 0, 0};
        check("C2 satisfied: extra edge means the block is not EXACTLY a matching",
              l2_ok(one, d), true);

        int e[7] = {(1 << 0) | (1 << 4), 1 << 1, 1 << 2, 1 << 3, 0, 0, 0};
        // j0 may be 4 instead of 0, giving S={4,1,2,3} with every row meeting S
        // exactly once -> still an induced matching, so this must be VIOLATED.
        check("C2 VIOLATED: a matching exists on an alternative representative",
              l2_ok(one, e), false);

        Profile none; none.index = -1; none.mMask = 0; none.windows = {};
        check("C2 vacuously satisfied when the class has no windows",
              l2_ok(none, a), true);

        // real class 12 (windows {0,2,3}): every side sharing one neighbour
        // admits no SDR in any window
        int f[7] = {1, 1, 1, 1, 1, 1, 1};
        check("C2 satisfied on real class 12 when all sides share neighbour 0",
              l2_ok(PROF[12], f), true);
        int g[7] = {1 << 0, 1 << 1, 1 << 2, 1 << 3, 1 << 4, 1 << 5, 1 << 6};
        check("C2 violated on real class 12 by the identity matching",
              l2_ok(PROF[12], g), false);
    }

    std::cout << "components\n";
    {
        int row[7] = {1, 1, 2, 4, 8, 16, 32};
        int col[7] = {0, 0, 0, 0, 0, 0, 0};
        for (int j = 0; j < 7; ++j)
            for (int i = 0; i < 7; ++i) if (row[i] >> j & 1) col[j] |= 1 << i;
        int cp[7], cq[7];
        components(row, col, cp, cq);
        check("p0 and p1 share neighbour q0 -> same component", cp[0] == cp[1], true);
        check("p0 and p2 -> different components", cp[0] == cp[2], false);
        check("q6 is isolated from p0's component", cq[6] == cp[0], false);
    }

    std::cout << (failures ? "\n*** UNIT TESTS FAILED ***\n" : "\nall unit tests passed\n");
}

// ---------------------------------------------------------------------------
int main(int argc, char** argv) {
    std::vector<std::string> pos;
    for (int i = 1; i < argc; ++i) {
        std::string s = argv[i];
        if (s == "--a7=on") { USE_A7 = true; }
        else if (s == "--a7=off") { USE_A7 = false; }
        else pos.push_back(s);
    }
    if (!pos.empty() && pos[0] == "--test") {
        loadProfiles(pos.size() >= 2 ? pos[1] : "profiles2.txt");
        runTests();
        return failures ? 1 : 0;
    }
    if (pos.size() < 2) {
        std::cerr << "usage: reduction_a7opt [--a7=on|--a7=off] <profiles2.txt> <out.json>\n";
        return 2;
    }
    std::cerr << "AKR Lemma 7 (H bipartite) filter: " << (USE_A7 ? "ON" : "OFF") << "\n";
    loadProfiles(pos[0]);
    enumerate();

    // canonical ordering of the output triples
    std::sort(TRIPLES.begin(), TRIPLES.end(), [](const Triple& x, const Triple& y) {
        if (x.a != y.a) return x.a < y.a;
        if (x.b != y.b) return x.b < y.b;
        return x.key < y.key;
    });

    std::vector<uint64_t> keys;
    for (const auto& t : TRIPLES) keys.push_back(t.key);
    std::sort(keys.begin(), keys.end());
    keys.erase(std::unique(keys.begin(), keys.end()), keys.end());

    auto distrib = [](std::vector<std::array<int, 7>>& v) {
        std::sort(v.begin(), v.end());
        std::string s = "{";
        size_t i = 0; bool first = true;
        while (i < v.size()) {
            size_t j = i; while (j < v.size() && v[j] == v[i]) ++j;
            if (!first) s += ", ";
            s += "\"";
            for (int t = 0; t < 7; ++t) { s += std::to_string(v[i][t]); if (t < 6) s += ","; }
            s += "\": " + std::to_string(j - i);
            first = false; i = j;
        }
        return s + "}";
    };

    std::vector<int> clsP, clsQ;
    for (const auto& t : TRIPLES) { clsP.push_back(t.a); clsQ.push_back(t.b); }
    std::sort(clsP.begin(), clsP.end()); clsP.erase(std::unique(clsP.begin(), clsP.end()), clsP.end());
    std::sort(clsQ.begin(), clsQ.end()); clsQ.erase(std::unique(clsQ.begin(), clsQ.end()), clsQ.end());

    std::vector<uint64_t> skeys;
    for (const auto& s : SURV) {
        uint64_t k = 0;
        for (int i = 0; i < 7; ++i) k |= (uint64_t)(unsigned)s.rows[i] << (7 * i);
        skeys.push_back(k);
    }
    std::sort(skeys.begin(), skeys.end());
    skeys.erase(std::unique(skeys.begin(), skeys.end()), skeys.end());

    fprintf(stderr, "graphs |E|=9 min degree>=1        : %lld\n", CNT_TOTAL);
    fprintf(stderr, "after consecutive AKR Lemma 5     : %lld\n", CNT_L5);
    fprintf(stderr, "after AKR Lemma 7 (H bipartite)   : %lld%s\n", CNT_L7,
            USE_A7 ? "" : "   [FILTER OFF -- same as previous line]");
    fprintf(stderr, "after crossing-set compatibility  : %lld\n", CNT_COMPAT);
    fprintf(stderr, "after Cerny Lemma 2               : %lld\n", CNT_L2);
    fprintf(stderr, "distinct surviving graphs         : %zu\n", keys.size());
    fprintf(stderr, "(classP,classQ,graph) triples     : %lld\n", CNT_TRIPLES);
    fprintf(stderr, "-- final avoiding-pair AKR L5 --\n");
    fprintf(stderr, "graphs surviving avoiding-pair L5 : %lld\n", CNT_AVGRAPH);
    fprintf(stderr, "distinct surviving graphs (final) : %zu\n", skeys.size());
    fprintf(stderr, "TRIPLES SURVIVING EVERYTHING      : %lld\n", CNT_AVSURV);
    {
        const char* sn[4] = {"after consecutive L5", "after compatibility",
                             "after Cerny L2", "after avoiding-pair L5"};
        fprintf(stderr, "-- diagnostic: graphs by (H bip on P, H bip on Q) --\n");
        for (int st = 0; st < 4; ++st)
            fprintf(stderr, "  %-24s  (F,F)=%lld (F,T)=%lld (T,F)=%lld (T,T)=%lld\n",
                    sn[st], BIPSTAT[st][0], BIPSTAT[st][1], BIPSTAT[st][2], BIPSTAT[st][3]);
    }

    std::ofstream o(pos[1]);
    o << "{\n \"implementation\": \"reduction_a7opt.cpp (C++), derived from Implementation B\",\n";
    o << " \"akr_lemma_7_applied\": " << (USE_A7 ? "true" : "false") << ",\n";
    o << " \"cerny_lemma_3_applied\": false,\n";
    o << " \"final_avoiding_pair_filter_applied\": true,\n";
    o << " \"counts\": {\n";
    o << "  \"graphs_E9_mindeg1\": " << CNT_TOTAL << ",\n";
    o << "  \"after_AKR_L5_consecutive\": " << CNT_L5 << ",\n";
    o << "  \"after_AKR_L7_H_bipartite\": " << CNT_L7 << ",\n";
    o << "  \"after_crossing_set_compatibility\": " << CNT_COMPAT << ",\n";
    o << "  \"after_Cerny_L2\": " << CNT_L2 << ",\n";
    o << "  \"distinct_graphs\": " << keys.size() << ",\n";
    o << "  \"triples\": " << CNT_TRIPLES << ",\n";
    o << "  \"graphs_after_avoiding_pair_L5\": " << CNT_AVGRAPH << ",\n";
    o << "  \"distinct_graphs_final\": " << skeys.size() << ",\n";
    o << "  \"triples_surviving_everything\": " << CNT_AVSURV << "\n },\n";
    o << " \"degree_sequence_distribution_P\": " << distrib(DEGDIST_P) << ",\n";
    o << " \"degree_sequence_distribution_Q\": " << distrib(DEGDIST_Q) << ",\n";
    o << " \"classes_P\": [";
    for (size_t i = 0; i < clsP.size(); ++i) { if (i) o << ", "; o << clsP[i]; }
    o << "],\n \"classes_Q\": [";
    for (size_t i = 0; i < clsQ.size(); ++i) { if (i) o << ", "; o << clsQ[i]; }
    o << "],\n \"triples_canonical\": [\n";
    for (size_t i = 0; i < TRIPLES.size(); ++i) {
        const auto& t = TRIPLES[i];
        o << "  {\"class_P\": " << t.a << ", \"class_Q\": " << t.b
          << ", \"P_neighbourhood_bitmasks\": [";
        for (int k = 0; k < 7; ++k) { if (k) o << ", "; o << t.rows[k]; }
        o << "]}" << (i + 1 < TRIPLES.size() ? "," : "") << "\n";
    }
    o << " ],\n";

    // residual triples surviving the whole pipeline
    std::sort(SURV.begin(), SURV.end(), [](const Surv& x, const Surv& y) {
        if (x.a != y.a) return x.a < y.a;
        if (x.b != y.b) return x.b < y.b;
        return x.rows < y.rows;
    });
    auto arr = [&](const std::array<int, 7>& v) {
        std::string s = "[";
        for (int k = 0; k < 7; ++k) { if (k) s += ", "; s += std::to_string(v[k]); }
        return s + "]";
    };
    o << " \"residual_survivors\": [\n";
    for (size_t i = 0; i < SURV.size(); ++i) {
        const auto& s = SURV[i];
        std::array<int, 7> dp{}, dq{};
        for (int k = 0; k < 7; ++k) dp[k] = pc(s.rows[k]);
        for (int k = 0; k < 7; ++k) dq[k] = pc(s.cols[k]);
        std::sort(dp.begin(), dp.end(), std::greater<int>());
        std::sort(dq.begin(), dq.end(), std::greater<int>());
        o << "  {\"class_P\": " << s.a << ", \"class_Q\": " << s.b
          << ", \"P_neighbourhood_bitmasks\": " << arr(s.rows)
          << ", \"Q_neighbourhood_bitmasks\": " << arr(s.cols)
          << ", \"components_P\": " << arr(s.cp)
          << ", \"components_Q\": " << arr(s.cq)
          << ", \"n_components\": " << s.ncp
          << ", \"degree_sequence_P\": " << arr(dp)
          << ", \"degree_sequence_Q\": " << arr(dq)
          << ", \"H_bipartite_P\": " << (s.hbipP ? "true" : "false")
          << ", \"H_bipartite_Q\": " << (s.hbipQ ? "true" : "false")
          << "}" << (i + 1 < SURV.size() ? "," : "") << "\n";
    }
    o << " ]\n}\n";
    fprintf(stderr, "wrote %s\n", pos[1].c_str());
    return 0;
}
