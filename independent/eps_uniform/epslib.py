"""Exact univariate polynomial / power-series arithmetic over Q, in the
perturbation parameter `eps`.

Everything here is `fractions.Fraction`.  No float ever appears.

Rationale: AKR's Theorem 17 says the perturbed configuration depends *linearly*
on eps.  So every vertex is an affine map eps |-> V0 + eps*E, and every
orientation determinant orient(A(eps),B(eps),C(eps)) is a polynomial in eps of
degree <= 2.  All the geometry we need is sign conditions on such polynomials,
so exact polynomial arithmetic is enough -- no numerics, no limits.
"""
from fractions import Fraction as F


class Poly:
    """Dense polynomial in eps with Fraction coefficients, c[0] + c[1]*e + ..."""
    __slots__ = ("c",)

    def __init__(self, coeffs):
        c = [F(x) for x in coeffs]
        while len(c) > 1 and c[-1] == 0:
            c.pop()
        self.c = c

    @staticmethod
    def const(a):
        return Poly([a])

    @staticmethod
    def x():
        return Poly([0, 1])

    def deg(self):
        return -1 if self.is_zero() else len(self.c) - 1

    def is_zero(self):
        return all(v == 0 for v in self.c)

    def __add__(self, o):
        o = o if isinstance(o, Poly) else Poly.const(o)
        n = max(len(self.c), len(o.c))
        return Poly([(self.c[i] if i < len(self.c) else 0) +
                     (o.c[i] if i < len(o.c) else 0) for i in range(n)])

    def __neg__(self):
        return Poly([-v for v in self.c])

    def __sub__(self, o):
        o = o if isinstance(o, Poly) else Poly.const(o)
        return self + (-o)

    def __mul__(self, o):
        o = o if isinstance(o, Poly) else Poly.const(o)
        r = [F(0)] * (len(self.c) + len(o.c) - 1)
        for i, a in enumerate(self.c):
            if a == 0:
                continue
            for j, b in enumerate(o.c):
                r[i + j] += a * b
        return Poly(r)

    __rmul__ = __mul__
    __radd__ = __add__

    def __call__(self, e):
        e = F(e)
        acc = F(0)
        for a in reversed(self.c):
            acc = acc * e + a
        return acc

    def valuation(self):
        """Index of the lowest nonzero coefficient; None if identically zero."""
        for i, a in enumerate(self.c):
            if a != 0:
                return i
        return None

    def lead_low(self):
        """(valuation, lowest nonzero coefficient) or (None, None)."""
        v = self.valuation()
        return (v, None) if v is None else (v, self.c[v])

    def __repr__(self):
        if self.is_zero():
            return "0"
        return " + ".join(f"{a}*e^{i}" for i, a in enumerate(self.c) if a != 0)


class Vec:
    """A point/vector in the plane whose coordinates are Poly in eps."""
    __slots__ = ("x", "y")

    def __init__(self, x, y):
        self.x = x if isinstance(x, Poly) else Poly.const(x)
        self.y = y if isinstance(y, Poly) else Poly.const(y)

    @staticmethod
    def affine(p0, e):
        """p0 + eps*e, with p0=(x,y) and e=(x,y) rational pairs."""
        E = Poly.x()
        return Vec(Poly.const(p0[0]) + E * Poly.const(e[0]),
                   Poly.const(p0[1]) + E * Poly.const(e[1]))

    def __add__(self, o):
        return Vec(self.x + o.x, self.y + o.y)

    def __sub__(self, o):
        return Vec(self.x - o.x, self.y - o.y)

    def scal(self, p):
        return Vec(self.x * p, self.y * p)

    def at(self, e):
        return (self.x(e), self.y(e))

    def __repr__(self):
        return f"({self.x}, {self.y})"


def cross(u, v):
    """2-D cross product, as a Poly."""
    return u.x * v.y - u.y * v.x


def orient(a, b, c):
    """Exactly lean/GeometryDefs.lean `orient`, lifted to Poly coefficients:
       (b.x-a.x)*(c.y-a.y) - (b.y-a.y)*(c.x-a.x).  Degree <= 2 in eps."""
    return (b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x)


def sgn(q):
    return (q > 0) - (q < 0)


# ---------------------------------------------------------------------------
# Power-series division:  num/den as a truncated series, requires den(0) != 0.
# ---------------------------------------------------------------------------
def series_div(num, den, order):
    """Coefficients 0..order of num/den.  Raises if den(0) == 0."""
    if den.c[0] == 0:
        raise ValueError("series_div: denominator vanishes at eps=0")
    a = [num.c[i] if i < len(num.c) else F(0) for i in range(order + 1)]
    b = [den.c[i] if i < len(den.c) else F(0) for i in range(order + 1)]
    q = []
    for n in range(order + 1):
        s = a[n] - sum(b[n - j] * q[j] for j in range(n))
        q.append(s / b[0])
    return q


# ---------------------------------------------------------------------------
# Explicit positive root-free radius.
# ---------------------------------------------------------------------------
def root_free_radius(p):
    """Return r > 0 (a Fraction) such that p(e) != 0 for all 0 < e < r, or
    None if p is identically zero.

    Write p = e^m * (c_m + c_{m+1} e + ... + c_d e^{d-m}).  For 0 < e <= 1,
        |c_m + sum_{j>m} c_j e^{j-m}| >= |c_m| - e * sum_{j>m} |c_j|.
    So any e with 0 < e < |c_m| / (S + 1), S = sum_{j>m} |c_j|, and e <= 1,
    keeps the bracket nonzero.  This is a Cauchy-type bound: completely
    explicit in the coefficients, which is exactly what a uniform eps_0 needs.
    """
    m, cm = p.lead_low()
    if m is None:
        return None
    S = sum(abs(a) for a in p.c[m + 1:])
    return min(F(1), abs(cm) / (S + 1))
