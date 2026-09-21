"""(R3): is there an admissible direction tuple leaving no *removable* witness
identically zero?

The point of this module is that the direction tuple is NOT a free point of
(R^2)^14.  Two constraints cut it down, and both were flagged as unchecked in
FINDINGS.md's (R3) sketch:

  (a) AKR Theorem 17 DETERMINES every dependent vertex's direction from the free
      ones (relation (1) is maintained with the same lambda), so the tuple lies
      in a linear subspace L;
  (b) AKR force "free vertices that are not involved in a degeneracy" to E = 0.

So here we work SYMBOLICALLY in the free directions.  Every vertex direction is
E_v = sum_f alpha_{v,f} * E_f with rational alpha (solved from Theorem 17's
system), every witness is a polynomial in eps AND in the free coordinates, and
"identically zero in eps for every admissible E" becomes an exact statement
about multivariate polynomials, not a sample.

Exact Fractions throughout.  No float.
"""
import itertools
from fractions import Fraction as F


# --------------------------------------------------------------- MPoly ------
class MP:
    """Sparse multivariate polynomial over Q.  Variable 0 is always eps; the
    remaining variables are the coordinates of the free direction vectors."""
    __slots__ = ("n", "d")

    def __init__(self, n, d=None):
        self.n = n
        self.d = {}
        if d:
            for k, v in d.items():
                if v:
                    self.d[k] = F(v)

    @staticmethod
    def const(n, a):
        a = F(a)
        return MP(n, {(0,) * n: a}) if a else MP(n)

    @staticmethod
    def var(n, i):
        e = [0] * n
        e[i] = 1
        return MP(n, {tuple(e): F(1)})

    def is_zero(self):
        return not self.d

    def __add__(self, o):
        if not isinstance(o, MP):
            o = MP.const(self.n, o)
        d = dict(self.d)
        for k, v in o.d.items():
            w = d.get(k, F(0)) + v
            if w:
                d[k] = w
            else:
                d.pop(k, None)
        return MP(self.n, d)

    def __neg__(self):
        return MP(self.n, {k: -v for k, v in self.d.items()})

    def __sub__(self, o):
        if not isinstance(o, MP):
            o = MP.const(self.n, o)
        return self + (-o)

    def __mul__(self, o):
        if not isinstance(o, MP):
            o = MP.const(self.n, o)
        d = {}
        for k1, v1 in self.d.items():
            for k2, v2 in o.d.items():
                k = tuple(a + b for a, b in zip(k1, k2))
                w = d.get(k, F(0)) + v1 * v2
                if w:
                    d[k] = w
                else:
                    d.pop(k, None)
        return MP(self.n, d)

    __rmul__ = __mul__
    __radd__ = __add__

    def eps_coeffs(self):
        """Split by the exponent of eps: list of MP (in the direction vars only,
        but kept in the same variable set) indexed by the eps-degree."""
        if not self.d:
            return []
        dmax = max(k[0] for k in self.d)
        out = [dict() for _ in range(dmax + 1)]
        for k, v in self.d.items():
            out[k[0]][(0,) + k[1:]] = v
        return [MP(self.n, x) for x in out]

    def subs_dirs(self, vals):
        """vals: dict var-index -> Fraction, for every variable except eps.
        Returns the dense univariate coefficient list in eps (Fractions)."""
        acc = {}
        for k, v in self.d.items():
            c = v
            for i in range(1, self.n):
                if k[i]:
                    c *= vals[i] ** k[i]
            if c:
                acc[k[0]] = acc.get(k[0], F(0)) + c
        if not acc:
            return [F(0)]
        m = max(acc)
        return [acc.get(i, F(0)) for i in range(m + 1)]


class SVec:
    """A planar point whose coordinates are MP."""
    __slots__ = ("x", "y")

    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __add__(self, o):
        return SVec(self.x + o.x, self.y + o.y)

    def __sub__(self, o):
        return SVec(self.x - o.x, self.y - o.y)

    def smul(self, c):
        return SVec(self.x * c, self.y * c)


def sorient(a, b, c):
    """lean/GeometryDefs.lean `orient`, verbatim, over MP."""
    return (b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x)


def sdot(u, v):
    return u.x * v.x + u.y * v.y


# ----------------------------------------------------- Theorem 17 solver ----
def theorem17_directions(nv, deps, free_dirs):
    """deps: {owner: (s1, s2, lam)} meaning V_owner = lam*V_s1 + (1-lam)*V_s2.
    free_dirs: {v: dict f->Fraction} giving E_v as a rational combination of the
    symbolic free directions, for every FREE vertex v (those not in deps).

    Returns {v: {f: Fraction}} for all v, or None if the system is singular.

    Exactly AKR's system (2)-(3): the dependent coordinates solve a linear
    system whose matrix is the same for x and y, so the whole solution is a
    scalar linear map from the free directions.  Theorem 17 asserts it is
    nonsingular; we solve it and REPORT if it is not."""
    D = sorted(deps)
    idx = {v: i for i, v in enumerate(D)}
    m = len(D)
    # rows:  E_owner - lam*E_s1 - (1-lam)*E_s2 = 0
    A = [[F(0)] * m for _ in range(m)]
    rhs = [dict() for _ in range(m)]          # combination of free directions
    for r, ow in enumerate(D):
        s1, s2, lam = deps[ow]
        A[r][idx[ow]] += F(1)
        for s, co in ((s1, -lam), (s2, -(1 - lam))):
            if s in idx:
                A[r][idx[s]] += co
            else:
                for f, c in free_dirs[s].items():
                    rhs[r][f] = rhs[r].get(f, F(0)) - co * c
    # gaussian elimination with dict right-hand sides
    piv = []
    row = 0
    for col in range(m):
        p = next((r for r in range(row, m) if A[r][col] != 0), None)
        if p is None:
            continue
        A[row], A[p] = A[p], A[row]
        rhs[row], rhs[p] = rhs[p], rhs[row]
        inv = F(1) / A[row][col]
        A[row] = [a * inv for a in A[row]]
        rhs[row] = {f: c * inv for f, c in rhs[row].items()}
        for r in range(m):
            if r != row and A[r][col] != 0:
                fac = A[r][col]
                A[r] = [a - fac * b for a, b in zip(A[r], A[row])]
                nd = dict(rhs[r])
                for f, c in rhs[row].items():
                    w = nd.get(f, F(0)) - fac * c
                    if w:
                        nd[f] = w
                    else:
                        nd.pop(f, None)
                rhs[r] = nd
        piv.append(col)
        row += 1
    if row != m:
        return None                            # singular: Theorem 17 would fail
    out = dict(free_dirs)
    for r, col in enumerate(piv):
        out[D[col]] = {f: c for f, c in rhs[r].items() if c}
    return out
