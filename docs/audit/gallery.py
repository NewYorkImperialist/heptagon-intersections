#!/usr/bin/env python3
"""
gallery.py -- the picture gallery for the audit document.

Purpose
-------
The audit PDF has to show a mathematician what the Lean statement is *about*:
two closed heptagons in the plane, and the points where their boundaries meet.
This tool draws those pictures (hand-written SVG, no libraries) and counts the
meeting points exactly.

Everything geometric here is a transcription of the Lean source, not an
invention:

  * `orientR`     -- lean/RealConfig.lean:54
        orientR a b c = (b.1 - a.1) * (c.2 - a.2) - (b.2 - a.2) * (c.1 - a.1)
  * `SimpleClosed`-- lean/AKR9.lean:71, all three conjuncts:
        (1) no degenerate side:      W i != W (i+1)
        (2) non-adjacent sides are disjoint  (forbids self-crossings)
        (3) adjacent sides meet in exactly the shared vertex:
                seg(i) cap seg(i+1) = {W (i+1)}
            (forbids an adjacent-side backtrack, and a repeated vertex
             W i = W (i+2))
    Three collinear vertices are deliberately ACCEPTED -- that is the whole
    point of `SimpleClosed`, and the self-test below checks it.
  * `Adjacent`    -- lean/LowerBound.lean:79:  i = j  or  j = i+1  or  i = j+1
                     (indices in Fin 7, i.e. mod 7)
  * `points9`     -- lean/AKR9.lean:119:  bdryP9 cap bdryQ9, where the sides
                     are CLOSED segments.

Arithmetic
----------
Exact, with `fractions.Fraction`.  No floating point is used for any geometric
decision anywhere in this file; floats appear only in `svg_coord`, to place
ink on a page.  Two closed segments meet in nothing, in one point, or in a
whole sub-segment; the third case means the two boundaries meet in infinitely
many points, and it is detected and flagged rather than miscounted.

Usage
-----
    python3 docs/audit/gallery.py              # self-test, draw, count, summarise
    python3 docs/audit/gallery.py --self-test  # run the self-tests only
    python3 docs/audit/gallery.py --only NAME  # one configuration

Outputs (under docs/audit/out/gallery/):
    <name>.svg           one picture per configuration
    index.html           contact sheet of all of them
    gallery_summary.json machine-readable: name, coordinates, count
    gallery_summary.csv  the same, for quoting in the document

Python 3 standard library only.
"""

from __future__ import annotations

import csv
import json
import sys
from fractions import Fraction
from itertools import combinations
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
OUT_DIR = Path(__file__).resolve().parent / "out" / "gallery"
CERT_PATH = REPO_ROOT / "data" / "lower_bound" / "lower_bound_38.json"

Pt = tuple  # (Fraction, Fraction)


def P(x, y) -> Pt:
    return (Fraction(x), Fraction(y))


def poly(coords) -> list:
    return [P(x, y) for x, y in coords]


# ---------------------------------------------------------------------------
# The orientation determinant.  lean/RealConfig.lean:54 (= GeometryDefs.orient)
# ---------------------------------------------------------------------------

def orientR(a: Pt, b: Pt, c: Pt) -> Fraction:
    """Twice the signed area of the triangle a b c.

    > 0 iff c is strictly to the LEFT of the directed line a -> b
      (counter-clockwise turn), < 0 iff strictly to the right, 0 iff the three
    points are collinear.  Character-for-character the Lean definition.
    """
    return (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0])


def collinear(a: Pt, b: Pt, c: Pt) -> bool:
    return orientR(a, b, c) == 0


def _cross(u, v) -> Fraction:
    return u[0] * v[1] - u[1] * v[0]


def _dot(u, v) -> Fraction:
    return u[0] * v[0] + u[1] * v[1]


def _sub(u, v):
    return (u[0] - v[0], u[1] - v[1])


def _add(u, v):
    return (u[0] + v[0], u[1] + v[1])


def _smul(t, u):
    return (t * u[0], t * u[1])


# ---------------------------------------------------------------------------
# Closed-segment intersection, exactly.
# ---------------------------------------------------------------------------

EMPTY = ("empty",)


def seg_meet(a: Pt, b: Pt, c: Pt, d: Pt):
    """Intersect the CLOSED segments [a,b] and [c,d].

    Returns one of
        ("empty",)
        ("point", p)
        ("segment", p, q)      -- a non-degenerate sub-segment: infinitely
                                  many common points
    """
    r = _sub(b, a)
    s = _sub(d, c)
    # degenerate inputs first: a zero-length "segment" is a point
    if r == (0, 0) and s == (0, 0):
        return ("point", a) if a == c else EMPTY
    if r == (0, 0):
        return ("point", a) if _on_segment(a, c, d) else EMPTY
    if s == (0, 0):
        return ("point", c) if _on_segment(c, a, b) else EMPTY

    denom = _cross(r, s)
    qp = _sub(c, a)
    if denom != 0:
        t = _cross(qp, s) / denom
        u = _cross(qp, r) / denom
        if 0 <= t <= 1 and 0 <= u <= 1:
            return ("point", _add(a, _smul(t, r)))
        return EMPTY
    # parallel
    if _cross(qp, r) != 0:
        return EMPTY  # parallel but not collinear
    # collinear: project [c,d] onto the parameter of [a,b]
    rr = _dot(r, r)
    t0 = _dot(_sub(c, a), r) / rr
    t1 = _dot(_sub(d, a), r) / rr
    lo, hi = (t0, t1) if t0 <= t1 else (t1, t0)
    lo = max(lo, Fraction(0))
    hi = min(hi, Fraction(1))
    if lo > hi:
        return EMPTY
    if lo == hi:
        return ("point", _add(a, _smul(lo, r)))
    return ("segment", _add(a, _smul(lo, r)), _add(a, _smul(hi, r)))


def _on_segment(p: Pt, a: Pt, b: Pt) -> bool:
    """Is p on the closed segment [a,b]?  Exact."""
    if not collinear(a, b, p):
        return False
    return (min(a[0], b[0]) <= p[0] <= max(a[0], b[0])
            and min(a[1], b[1]) <= p[1] <= max(a[1], b[1]))


# ---------------------------------------------------------------------------
# SimpleClosed.  lean/AKR9.lean:71
# ---------------------------------------------------------------------------

def adjacent(i: int, j: int, n: int = 7) -> bool:
    """LowerBound.Adjacent, lean/LowerBound.lean:79, in Fin n."""
    return i == j or j == (i + 1) % n or i == (j + 1) % n


def side(W: list, i: int) -> tuple:
    """Side i of the closed polygon: the segment from W i to W (i+1)."""
    n = len(W)
    return (W[i % n], W[(i + 1) % n])


def simple_closed(W: list) -> tuple[bool, list[str]]:
    """`SimpleClosed W`, all three conjuncts.  Returns (holds, reasons)."""
    n = len(W)
    reasons: list[str] = []
    # (1) no degenerate side
    for i in range(n):
        if W[i] == W[(i + 1) % n]:
            reasons.append("conjunct 1: side %d is degenerate (W%d = W%d)"
                           % (i, i, (i + 1) % n))
    # (2) non-adjacent sides disjoint
    for i in range(n):
        for j in range(n):
            if adjacent(i, j, n):
                continue
            a, b = side(W, i)
            c, d = side(W, j)
            m = seg_meet(a, b, c, d)
            if m[0] != "empty":
                reasons.append("conjunct 2: non-adjacent sides %d and %d meet (%s)"
                               % (i, j, m[0]))
    # (3) adjacent sides meet exactly in the shared vertex
    for i in range(n):
        a, b = side(W, i)
        c, d = side(W, i + 1)
        m = seg_meet(a, b, c, d)
        v = W[(i + 1) % n]
        if m[0] == "point" and m[1] == v:
            continue
        reasons.append("conjunct 3: sides %d and %d meet in %s, not exactly {W%d}"
                       % (i, (i + 1) % n, m[0], (i + 1) % n))
    # de-duplicate, keep order
    seen, out = set(), []
    for r in reasons:
        if r not in seen:
            seen.add(r)
            out.append(r)
    return (not out, out)


# ---------------------------------------------------------------------------
# points9 = bdryP9 cap bdryQ9.  lean/AKR9.lean:119
# ---------------------------------------------------------------------------

def boundary_meet(Pv: list, Qv: list) -> dict:
    """All points of `bdryP9 cap bdryQ9`, exactly.

    Returns a dict with
        points     sorted list of distinct intersection points
        count      len(points), or None if infinite
        infinite   True iff some P-side and Q-side overlap in a sub-segment
        overlaps   the offending (i, j, p, q) quadruples
        incidences the (i, j, point) list, for the document's side table
    """
    pts: set = set()
    overlaps: list = []
    incidences: list = []
    for i in range(len(Pv)):
        a, b = side(Pv, i)
        for j in range(len(Qv)):
            c, d = side(Qv, j)
            m = seg_meet(a, b, c, d)
            if m[0] == "point":
                pts.add(m[1])
                incidences.append((i, j, m[1]))
            elif m[0] == "segment":
                overlaps.append((i, j, m[1], m[2]))
    ordered = sorted(pts)
    return {
        "points": ordered,
        "count": None if overlaps else len(ordered),
        "infinite": bool(overlaps),
        "overlaps": overlaps,
        "incidences": incidences,
    }


def diagnostics(Pv: list, Qv: list) -> dict:
    """The degeneracy flags the document wants to name for each picture."""
    shared = sorted({(i, j) for i in range(len(Pv)) for j in range(len(Qv))
                     if Pv[i] == Qv[j]})
    v_on_other = []
    for i, v in enumerate(Pv):
        for j in range(len(Qv)):
            c, d = side(Qv, j)
            if _on_segment(v, c, d):
                v_on_other.append(("P%d" % i, "Q-side %d" % j,
                                   "vertex" if v in (c, d) else "edge interior"))
    for j, v in enumerate(Qv):
        for i in range(len(Pv)):
            a, b = side(Pv, i)
            if _on_segment(v, a, b):
                v_on_other.append(("Q%d" % j, "P-side %d" % i,
                                   "vertex" if v in (a, b) else "edge interior"))
    colP = [t for t in combinations(range(len(Pv)), 3)
            if collinear(Pv[t[0]], Pv[t[1]], Pv[t[2]])]
    colQ = [t for t in combinations(range(len(Qv)), 3)
            if collinear(Qv[t[0]], Qv[t[1]], Qv[t[2]])]
    allv = Pv + Qv
    col14 = [t for t in combinations(range(14), 3)
             if collinear(allv[t[0]], allv[t[1]], allv[t[2]])]
    return {
        "shared_vertices": shared,
        "vertex_on_other_boundary": v_on_other,
        # NoVertexOnOther, lean/AKR9.lean:103 -- holds iff that list is empty
        "no_vertex_on_other": not v_on_other,
        "collinear_triples_P": colP,
        "collinear_triples_Q": colQ,
        "general_position_all_14": not col14,
    }


# ---------------------------------------------------------------------------
# Hand-written SVG.  Floats appear below this line and nowhere above it.
# ---------------------------------------------------------------------------

COL_P = "#1b5e9c"      # blue, solid
COL_Q = "#c62828"      # red, dashed
COL_X = "#111111"      # intersection markers
CANVAS = 760
MARGIN = 70
TOP_BAND = 64          # room for the caption


def _bbox(pts):
    xs = [p[0] for p in pts]
    ys = [p[1] for p in pts]
    return min(xs), max(xs), min(ys), max(ys)


def _projector(Pv, Qv, band=TOP_BAND):
    x0, x1, y0, y1 = _bbox(Pv + Qv)
    w = float(x1 - x0) or 1.0
    h = float(y1 - y0) or 1.0
    avail_w = CANVAS - 2 * MARGIN
    avail_h = CANVAS - 2 * MARGIN - band
    s = min(avail_w / w, avail_h / h)
    ox = MARGIN + (avail_w - w * s) / 2.0
    oy = MARGIN + band + (avail_h - h * s) / 2.0

    def proj(p):
        # SVG's y grows downward; the plane's y grows upward.  Flip.
        px = ox + (float(p[0]) - float(x0)) * s
        py = oy + (float(y1) - float(p[1])) * s
        return (round(px, 2), round(py, 2))

    return proj


def _polyline(proj, W, colour, dash, fill_opacity):
    pts = " ".join("%g,%g" % proj(v) for v in W)
    dashattr = ' stroke-dasharray="10 6"' if dash else ""
    return ('  <polygon points="%s" fill="%s" fill-opacity="%s" stroke="%s" '
            'stroke-width="3" stroke-linejoin="round"%s />'
            % (pts, colour, fill_opacity, colour, dashattr))


def _vertices(proj, W, colour, prefix):
    out = []
    for k, v in enumerate(W):
        x, y = proj(v)
        out.append('  <circle cx="%g" cy="%g" r="4.5" fill="%s" />' % (x, y, colour))
        out.append('  <text x="%g" y="%g" font-family="Helvetica,Arial,sans-serif" '
                   'font-size="12" fill="%s" paint-order="stroke" stroke="#ffffff" '
                   'stroke-width="3">%s%d</text>'
                   % (x + 7, y - 7, colour, prefix, k))
    return out


def _marks(proj, pts, label):
    out = []
    for k, p in enumerate(pts, start=1):
        x, y = proj(p)
        out.append('  <circle cx="%g" cy="%g" r="8" fill="#ffffff" fill-opacity="0.85" '
                   'stroke="%s" stroke-width="2" />' % (x, y, COL_X))
        if label:
            out.append('  <text x="%g" y="%g" font-family="Helvetica,Arial,sans-serif" '
                       'font-size="9" fill="%s" text-anchor="middle" '
                       'dominant-baseline="central">%d</text>' % (x, y, COL_X, k))
    return out


def _esc(s: str) -> str:
    return (s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;"))


def _wrap(text: str, width: int) -> list[str]:
    """Greedy word wrap, so a long caption is not clipped at the page edge."""
    out, cur = [], ""
    for word in text.split():
        cand = (cur + " " + word).strip()
        if len(cand) > width and cur:
            out.append(cur)
            cur = word
        else:
            cur = cand
    if cur:
        out.append(cur)
    return out


def render_svg(name, desc, Pv, Qv, result, diag) -> str:
    if result["infinite"]:
        headline = "boundaries overlap in a segment: INFINITELY MANY points"
    else:
        headline = "%d intersection points" % result["count"]
    desc_lines = _wrap(desc, 96)
    band = TOP_BAND + 17 * (len(desc_lines) - 1)
    proj = _projector(Pv, Qv, band)
    lines = [
        '<?xml version="1.0" encoding="UTF-8"?>',
        '<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" '
        'viewBox="0 0 %d %d">' % (CANVAS, CANVAS, CANVAS, CANVAS),
        '  <rect width="%d" height="%d" fill="#ffffff" />' % (CANVAS, CANVAS),
        '  <text x="%d" y="30" font-family="Helvetica,Arial,sans-serif" '
        'font-size="19" font-weight="bold" fill="#111111">%s</text>'
        % (MARGIN // 2, _esc(name)),
    ]
    for k, dl in enumerate(desc_lines):
        lines.append('  <text x="%d" y="%d" font-family="Helvetica,Arial,sans-serif" '
                     'font-size="13" fill="#444444">%s</text>'
                     % (MARGIN // 2, 52 + 17 * k, _esc(dl)))
    lines += [
        '  <text x="%d" y="%d" font-family="Helvetica,Arial,sans-serif" '
        'font-size="14" font-weight="bold" fill="#111111">%s</text>'
        % (MARGIN // 2, 52 + 17 * len(desc_lines) + 5, _esc(headline)),
        '  <text x="%d" y="%d" font-family="Helvetica,Arial,sans-serif" '
        'font-size="12" fill="%s">P (solid)</text>' % (MARGIN // 2, CANVAS - 22, COL_P),
        '  <text x="%d" y="%d" font-family="Helvetica,Arial,sans-serif" '
        'font-size="12" fill="%s">Q (dashed)</text>' % (MARGIN // 2 + 80, CANVAS - 22, COL_Q),
        '  <text x="%d" y="%d" font-family="Helvetica,Arial,sans-serif" '
        'font-size="12" fill="#111111">circles: points of &#8706;P &#8745; &#8706;Q</text>'
        % (MARGIN // 2 + 180, CANVAS - 22),
    ]
    lines.append(_polyline(proj, Pv, COL_P, False, "0.07"))
    lines.append(_polyline(proj, Qv, COL_Q, True, "0.07"))
    lines += _vertices(proj, Pv, COL_P, "P")
    lines += _vertices(proj, Qv, COL_Q, "Q")
    if result["infinite"]:
        for (i, j, p, q) in result["overlaps"]:
            x1, y1 = proj(p)
            x2, y2 = proj(q)
            lines.append('  <line x1="%g" y1="%g" x2="%g" y2="%g" stroke="%s" '
                         'stroke-width="9" stroke-opacity="0.45" />'
                         % (x1, y1, x2, y2, COL_X))
    # in the infinite case the numbered labels would imply a finite count
    lines += _marks(proj, result["points"],
                    label=not result["infinite"] and len(result["points"]) <= 40)
    if diag["vertex_on_other_boundary"]:
        lines.append('  <text x="%d" y="%d" font-family="Helvetica,Arial,sans-serif" '
                     'font-size="12" fill="#8a4b00">degenerate: %s</text>'
                     % (MARGIN // 2, CANVAS - 40,
                        _esc("; ".join("%s lies on %s (%s)" % t
                                       for t in diag["vertex_on_other_boundary"][:3]))))
    lines.append("</svg>")
    return "\n".join(lines) + "\n"


# ---------------------------------------------------------------------------
# The configurations.
#
# All coordinates are integers.  `expected` is what the configuration was
# designed to show; a mismatch is reported loudly, and for the certificate it
# aborts the run.
# ---------------------------------------------------------------------------

def load_certificate():
    d = json.loads(CERT_PATH.read_text(encoding="utf-8"))
    return poly(d["P"]), poly(d["Q"]), d


CONVEX7 = [(100, 0), (62, 78), (-22, 97), (-90, 43), (-90, -43), (-22, -97), (62, -78)]


def _shift(coords, dx, dy):
    return [(x + dx, y + dy) for x, y in coords]


def _rot_like(coords):
    """A second convex heptagon, turned relative to CONVEX7 (hand-tabulated
    integers; no floating point is used to build it)."""
    return [(97, 22), (43, 90), (-43, 90), (-97, 22), (-78, -62), (0, -100), (78, -62)]


CONFIGS = [
    # ---- easy, countable by eye -------------------------------------------
    dict(
        name="easy_lens_2",
        desc="Two convex heptagons overlapping in a lens.",
        awkward=False,
        Pc=CONVEX7,
        Qc=_shift(CONVEX7, 150, 0),
        expected=2,
    ),
    dict(
        name="easy_bars_cross_4",
        desc="A horizontal bar and a vertical bar, each a simple heptagon, crossing once.",
        awkward=False,
        Pc=[(-300, -40), (0, -46), (300, -40), (300, 40), (100, 47), (-100, 44), (-300, 40)],
        # the same bar transposed (x and y swapped), so it stands upright
        Qc=[(-40, -300), (-46, 0), (-40, 300), (40, 300), (47, 100), (44, -100), (40, -300)],
        expected=4,
    ),
    dict(
        name="easy_slotted_and_bar_8",
        desc="A slotted heptagon (a pocket cut into its base) crossed by a bar: "
             "four sides of P pass through the bar, twice each.",
        awkward=False,
        Pc=[(0, 0), (60, 2), (60, 160), (100, 160), (100, 4), (160, 0), (80, 220)],
        Qc=[(-50, 90), (110, 85), (250, 90), (250, 110), (150, 118), (50, 112), (-50, 110)],
        expected=8,
    ),
    dict(
        name="easy_turned_pair_14",
        desc="A convex heptagon and a turned copy of it, concentric: the boundaries "
             "cross the maximum 14 times for two convex heptagons (2 per side of P).",
        awkward=False,
        Pc=CONVEX7,
        Qc=_rot_like(CONVEX7),
        expected=14,
    ),
    # ---- deliberately awkward ---------------------------------------------
    dict(
        name="awkward_vertex_in_edge_interior",
        desc="Q5 lies exactly in the INTERIOR of P-side 0. (E9)/NoVertexOnOther fails: "
             "this is the vertex-on-side degeneracy AKR section 9.2 removes.",
        awkward=True,
        Pc=[(0, 0), (300, 0), (360, 120), (300, 240), (150, 300), (0, 240), (-60, 120)],
        Qc=[(120, -80), (200, -60), (225, -20), (260, 60), (205, 45), (150, 0), (100, -40)],
        expected=2,
    ),
    dict(
        name="awkward_three_collinear_in_P",
        desc="P0, P1, P2 are collinear (P1 sits inside the segment P0-P2), so P's base "
             "is one straight line split into two sides. SimpleClosed accepts this; "
             "general position does not. Q zig-zags across the base, twice on each side.",
        awkward=True,
        Pc=[(0, 0), (150, 0), (300, 0), (360, 120), (180, 300), (0, 240), (-60, 120)],
        Qc=[(20, 60), (80, -60), (140, 55), (200, -60), (260, 62), (280, 140), (30, 145)],
        expected=4,
    ),
    dict(
        name="awkward_shared_vertex",
        desc="P and Q share a vertex exactly (P0 = Q0). This is the vertex-vertex "
             "coincidence AKR section 9.1 removes; points9_le_38_of_coincFree assumes it away.",
        awkward=True,
        Pc=[(0, 0), (300, 0), (360, 120), (300, 240), (150, 300), (0, 240), (-60, 120)],
        Qc=[(0, 0), (-160, -90), (-40, -180), (140, -150), (220, -40), (120, 60), (40, 90)],
        expected=2,
    ),
    dict(
        name="awkward_tangential_touch",
        desc="The two boundaries touch at one point without crossing: Q sits on the "
             "outside of P-side 0 and meets it only at Q0.",
        awkward=True,
        Pc=[(0, 0), (300, 0), (360, 120), (300, 240), (150, 300), (0, 240), (-60, 120)],
        Qc=[(150, 0), (60, -60), (100, -140), (200, -170), (280, -120), (300, -50), (230, -20)],
        expected=1,
    ),
    dict(
        name="awkward_overlapping_sides_infinite",
        desc="A P-side and a Q-side are collinear and overlap in a whole sub-segment, "
             "so the boundaries meet in infinitely many points. Must be FLAGGED, not counted.",
        awkward=True,
        Pc=[(0, 0), (300, 0), (360, 120), (300, 240), (150, 300), (0, 240), (-60, 120)],
        Qc=[(150, 0), (450, 0), (480, -100), (300, -200), (100, -180), (20, -100), (60, -40)],
        expected="infinite",
    ),
]


# ---------------------------------------------------------------------------
# Self-tests.  Run on every invocation; abort on failure.
# ---------------------------------------------------------------------------

def _check(cond, msg, results):
    results.append((msg, bool(cond)))


def _textbook_intersects(a: Pt, b: Pt, c: Pt, d: Pt) -> bool:
    """Do the closed segments [a,b] and [c,d] have a common point?

    The standard orientation-sign test, written independently of `seg_meet`
    so that the two can be cross-checked exhaustively in the self-test.
    """
    d1 = orientR(c, d, a)
    d2 = orientR(c, d, b)
    d3 = orientR(a, b, c)
    d4 = orientR(a, b, d)
    if ((d1 > 0) != (d2 > 0) or (d1 < 0) != (d2 < 0)) and \
       ((d3 > 0) != (d4 > 0) or (d3 < 0) != (d4 < 0)) and \
       d1 != 0 and d2 != 0 and d3 != 0 and d4 != 0:
        return True
    return (_on_segment(a, c, d) or _on_segment(b, c, d)
            or _on_segment(c, a, b) or _on_segment(d, a, b))


def self_test(verbose=True):
    r: list[tuple[str, bool]] = []
    a, b, c = P(0, 0), P(4, 0), P(0, 3)

    # --- orientR sign conventions ---
    _check(orientR(a, b, c) > 0, "orientR: counter-clockwise triple is positive", r)
    _check(orientR(a, c, b) < 0, "orientR: clockwise triple is negative", r)
    _check(orientR(a, b, P(8, 0)) == 0, "orientR: collinear triple is zero", r)
    _check(orientR(a, b, c) == 12, "orientR: value is twice the signed area", r)
    _check(orientR(a, b, c) == -orientR(b, a, c),
           "orientR: antisymmetric in its first two arguments", r)
    t = Fraction(5, 2)
    _check(orientR(_smul(t, a), _smul(t, b), _smul(t, c)) == t ** 2 * orientR(a, b, c),
           "orientR: homogeneous of degree 2 (RealConfig.orientR_smul)", r)

    # --- segment intersection, the four required cases and more ---
    m = seg_meet(P(0, 0), P(10, 10), P(0, 10), P(10, 0))
    _check(m == ("point", P(5, 5)), "seg_meet: transversal crossing -> the crossing point", r)
    _check(seg_meet(P(0, 0), P(1, 0), P(0, 5), P(1, 5)) == EMPTY,
           "seg_meet: parallel disjoint -> empty", r)
    _check(seg_meet(P(0, 0), P(1, 1), P(5, 0), P(6, 2)) == EMPTY,
           "seg_meet: skew disjoint -> empty", r)
    m = seg_meet(P(0, 0), P(10, 0), P(4, 0), P(14, 0))
    _check(m == ("segment", P(4, 0), P(10, 0)),
           "seg_meet: collinear overlap -> the shared sub-segment", r)
    m = seg_meet(P(0, 0), P(10, 0), P(10, 0), P(10, 10))
    _check(m == ("point", P(10, 0)), "seg_meet: shared endpoint -> that endpoint", r)
    m = seg_meet(P(0, 0), P(10, 0), P(10, 0), P(20, 0))
    _check(m == ("point", P(10, 0)),
           "seg_meet: collinear, touching at one endpoint -> that point", r)
    _check(seg_meet(P(0, 0), P(10, 0), P(11, 0), P(20, 0)) == EMPTY,
           "seg_meet: collinear disjoint -> empty", r)
    m = seg_meet(P(0, 0), P(10, 0), P(5, 0), P(5, 9))
    _check(m == ("point", P(5, 0)), "seg_meet: T-touch (endpoint inside the other) -> point", r)
    m = seg_meet(P(0, 0), P(10, 0), P(0, 0), P(10, 0))
    _check(m == ("segment", P(0, 0), P(10, 0)), "seg_meet: identical segments -> segment", r)
    m = seg_meet(P(0, 0), P(10, 0), P(10, 0), P(0, 0))
    _check(m == ("segment", P(0, 0), P(10, 0)),
           "seg_meet: identical segments, opposite orientation -> segment", r)
    m = seg_meet(P(0, 0), P(9, 3), P(3, 1), P(3, 1))
    _check(m == ("point", P(3, 1)), "seg_meet: degenerate segment on the other -> point", r)
    m = seg_meet(P(0, 0), P(6, 3), P(2, 1), P(4, 2))
    _check(m == ("segment", P(2, 1), P(4, 2)),
           "seg_meet: one collinear segment inside the other -> the inner segment", r)
    m = seg_meet(P(0, 0), P(3, 1), P(1, 0), P(0, 1))
    _check(m[0] == "point" and m[1] == (Fraction(3, 4), Fraction(1, 4)),
           "seg_meet: non-integer crossing is exact (3/4, 1/4)", r)

    # --- seg_meet against an INDEPENDENT predicate, exhaustively ---
    # `_textbook_intersects` is the standard orientation-sign test (CLRS).  It
    # is written from a different idea than `seg_meet` (signs, not parameters),
    # so agreement on every segment pair over a 3x3 integer grid -- 6561 pairs,
    # including every degenerate and collinear case -- is real evidence.
    grid = [P(x, y) for x in range(3) for y in range(3)]
    segs = [(a, b) for a in grid for b in grid]
    disagree = 0
    saw = {"empty": 0, "point": 0, "segment": 0}
    for (a, b) in segs:
        for (c, d) in segs:
            got = seg_meet(a, b, c, d)
            saw[got[0]] += 1
            if (got[0] != "empty") != _textbook_intersects(a, b, c, d):
                disagree += 1
    _check(disagree == 0,
           "seg_meet: agrees with the textbook orientation test on all %d segment "
           "pairs over a 3x3 grid" % (len(segs) ** 2), r)
    _check(saw["empty"] and saw["point"] and saw["segment"],
           "seg_meet: that sweep exercised all three outcomes "
           "(empty %d, point %d, segment %d)" % (saw["empty"], saw["point"], saw["segment"]), r)
    for (a, b) in segs[:200]:
        for (c, d) in segs[:200:7]:
            g1, g2 = seg_meet(a, b, c, d), seg_meet(c, d, a, b)
            if g1[0] != g2[0] or sorted(g1[1:]) != sorted(g2[1:]):
                disagree += 1
    _check(disagree == 0, "seg_meet: symmetric in its two segments", r)

    # --- SimpleClosed ---
    good = poly([(0, 0), (150, 0), (300, 0), (360, 120), (180, 300), (0, 240), (-60, 120)])
    ok, why = simple_closed(good)
    _check(ok, "SimpleClosed: ACCEPTS a heptagon with three collinear vertices", r)
    _check(any(collinear(good[i], good[j], good[k])
               for i, j, k in combinations(range(7), 3)),
           "SimpleClosed: that test heptagon really does have a collinear triple", r)

    crossing = poly([(0, 0), (300, 0), (300, 200), (150, -100), (0, 200), (-60, 120), (-30, 40)])
    ok, why = simple_closed(crossing)
    _check(not ok, "SimpleClosed: REJECTS a self-crossing heptagon", r)
    _check(any("conjunct 2" in w for w in why),
           "SimpleClosed: the self-crossing is caught by conjunct 2 (non-adjacent sides)", r)

    degen = poly([(0, 0), (0, 0), (300, 0), (360, 120), (180, 300), (0, 240), (-60, 120)])
    ok, why = simple_closed(degen)
    _check(not ok and any("conjunct 1" in w for w in why),
           "SimpleClosed: REJECTS a degenerate side (repeated consecutive vertex)", r)

    backtrack = poly([(0, 0), (300, 0), (100, 0), (360, 120), (180, 300), (0, 240), (-60, 120)])
    ok, why = simple_closed(backtrack)
    _check(not ok and any("conjunct 3" in w for w in why),
           "SimpleClosed: REJECTS an adjacent-side backtrack (sides overlap in a segment)", r)

    repeat = poly([(0, 0), (300, 0), (0, 0), (360, 120), (180, 300), (0, 240), (-60, 120)])
    ok, why = simple_closed(repeat)
    _check(not ok, "SimpleClosed: REJECTS a repeated vertex W0 = W2", r)

    _check(adjacent(6, 0) and adjacent(0, 6) and adjacent(3, 3) and not adjacent(0, 2),
           "Adjacent: cyclic, reflexive, and only at distance <= 1 (LowerBound.lean:79)", r)

    # --- counting ---
    sq_out = poly([(0, 0), (100, 0), (200, 0), (200, 100), (200, 200), (100, 200), (0, 200)])
    sq_in = poly([(20, 20), (80, 20), (140, 20), (140, 80), (140, 140), (80, 140), (20, 140)])
    res = boundary_meet(sq_out, sq_in)
    _check(res["count"] == 0 and not res["infinite"],
           "boundary_meet: nested, disjoint boundaries -> 0 points", r)
    res = boundary_meet(sq_out, [(_add(v, (Fraction(150), Fraction(50)))) for v in sq_in])
    _check(res["count"] is not None, "boundary_meet: a finite configuration reports a count", r)
    ov = boundary_meet(sq_out, [(_add(v, (Fraction(0), Fraction(-20)))) for v in sq_in])
    _check(ov["infinite"] and ov["count"] is None,
           "boundary_meet: an overlapping side pair is flagged infinite, not counted", r)

    if verbose:
        for msg, okk in r:
            print("  [%s] %s" % ("ok" if okk else "FAIL", msg))
    bad = [m for m, okk in r if not okk]
    if bad:
        print("SELF-TEST FAILURE in gallery.py:", file=sys.stderr)
        for m in bad:
            print("  - " + m, file=sys.stderr)
        raise SystemExit(2)
    return r


# ---------------------------------------------------------------------------
# Driver
# ---------------------------------------------------------------------------

def _fmt(p) -> str:
    def f(x):
        return str(x.numerator) if x.denominator == 1 else "%d/%d" % (x.numerator, x.denominator)
    return "(%s, %s)" % (f(p[0]), f(p[1]))


def run_one(cfg) -> dict:
    Pv, Qv = poly(cfg["Pc"]), poly(cfg["Qc"])
    okP, whyP = simple_closed(Pv)
    okQ, whyQ = simple_closed(Qv)
    res = boundary_meet(Pv, Qv)
    diag = diagnostics(Pv, Qv)
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    (OUT_DIR / (cfg["name"] + ".svg")).write_text(
        render_svg(cfg["name"], cfg["desc"], Pv, Qv, res, diag), encoding="utf-8")
    got = "infinite" if res["infinite"] else res["count"]
    exp = cfg.get("expected")
    return {
        "name": cfg["name"],
        "description": cfg["desc"],
        "awkward": cfg["awkward"],
        "P": [[str(v[0]), str(v[1])] for v in Pv],
        "Q": [[str(v[0]), str(v[1])] for v in Qv],
        "count": got,
        "expected": exp,
        "matches_expectation": None if exp is None else (got == exp),
        "simple_P": okP, "simple_P_failures": whyP,
        "simple_Q": okQ, "simple_Q_failures": whyQ,
        "no_vertex_on_other": diag["no_vertex_on_other"],
        "shared_vertices": ["P%d = Q%d" % t for t in diag["shared_vertices"]],
        "vertex_on_other_boundary": ["%s on %s (%s)" % t
                                     for t in diag["vertex_on_other_boundary"]],
        "collinear_triples_P": ["P%d,P%d,P%d" % t for t in diag["collinear_triples_P"]],
        "collinear_triples_Q": ["Q%d,Q%d,Q%d" % t for t in diag["collinear_triples_Q"]],
        "general_position_all_14": diag["general_position_all_14"],
        "intersection_points": [_fmt(p) for p in res["points"]],
        "overlapping_side_pairs": ["P-side %d with Q-side %d, from %s to %s"
                                   % (i, j, _fmt(p), _fmt(q))
                                   for (i, j, p, q) in res["overlaps"]],
        "svg": "out/gallery/%s.svg" % cfg["name"],
    }


def write_index(records):
    html = ["<!doctype html><meta charset='utf-8'>",
            "<title>audit gallery</title>",
            "<style>body{font-family:Helvetica,Arial,sans-serif;margin:2em;max-width:60em}"
            "figure{margin:2em 0}img{border:1px solid #ccc;width:100%;max-width:760px}"
            "code{background:#f4f4f4}</style>",
            "<h1>Audit gallery</h1>",
            "<p>Generated by <code>docs/audit/gallery.py</code>. "
            "Counts are exact (<code>fractions.Fraction</code>).</p>"]
    for rec in records:
        html.append("<figure><figcaption><b>%s</b> &mdash; %s<br>points: <b>%s</b>%s"
                    "</figcaption><img src='%s.svg' alt='%s'></figure>"
                    % (rec["name"], rec["description"], rec["count"],
                       " (awkward case)" if rec["awkward"] else "",
                       rec["name"], rec["name"]))
    (OUT_DIR / "index.html").write_text("\n".join(html) + "\n", encoding="utf-8")


def write_summary(records):
    (OUT_DIR / "gallery_summary.json").write_text(
        json.dumps({"generator": "docs/audit/gallery.py",
                    "certificate_source": str(CERT_PATH.relative_to(REPO_ROOT)),
                    "configurations": records}, indent=2) + "\n", encoding="utf-8")
    with (OUT_DIR / "gallery_summary.csv").open("w", newline="", encoding="utf-8") as fh:
        w = csv.writer(fh)
        w.writerow(["name", "awkward", "count", "expected", "simple_P", "simple_Q",
                    "no_vertex_on_other", "general_position_all_14", "P", "Q",
                    "description"])
        for rec in records:
            w.writerow([rec["name"], rec["awkward"], rec["count"],
                        "" if rec["expected"] is None else rec["expected"],
                        rec["simple_P"], rec["simple_Q"], rec["no_vertex_on_other"],
                        rec["general_position_all_14"],
                        ";".join("%s,%s" % (a, b) for a, b in rec["P"]),
                        ";".join("%s,%s" % (a, b) for a, b in rec["Q"]),
                        rec["description"]])


def main(argv):
    args = argv[1:]
    print("gallery.py self-tests:")
    self_test()
    if "--self-test" in args:
        print("self-tests only; nothing drawn.")
        return 0

    only = args[args.index("--only") + 1] if "--only" in args else None

    Pc, Qc, certdoc = load_certificate()
    cert_cfg = dict(
        name="certificate_38",
        desc="The lower-bound certificate of data/lower_bound/lower_bound_38.json: "
             "two simple heptagons whose boundaries meet in 38 points.",
        awkward=False,
        Pc=[(int(v[0]), int(v[1])) for v in Pc],
        Qc=[(int(v[0]), int(v[1])) for v in Qc],
        expected=38,
    )
    all_cfgs = [cert_cfg] + CONFIGS
    if only:
        all_cfgs = [c for c in all_cfgs if c["name"] == only]
        if not all_cfgs:
            print("no configuration named %r" % only, file=sys.stderr)
            return 1

    records = [run_one(c) for c in all_cfgs]
    write_summary(records)
    write_index(records)

    print("\n%-38s %-9s %-9s %s" % ("configuration", "points", "expected", "notes"))
    print("-" * 100)
    for rec in records:
        notes = []
        if rec["awkward"]:
            notes.append("awkward")
        if not rec["no_vertex_on_other"]:
            notes.append("NoVertexOnOther FAILS")
        if rec["shared_vertices"]:
            notes.append("shared vertex " + ",".join(rec["shared_vertices"]))
        if rec["collinear_triples_P"] or rec["collinear_triples_Q"]:
            notes.append("collinear triple")
        if not rec["general_position_all_14"]:
            notes.append("not general position")
        if rec["overlapping_side_pairs"]:
            notes.append("OVERLAP: %s" % rec["overlapping_side_pairs"][0])
        if not (rec["simple_P"] and rec["simple_Q"]):
            notes.append("NOT SimpleClosed!")
        flag = ""
        if rec["matches_expectation"] is False:
            flag = "  <-- MISMATCH"
        print("%-38s %-9s %-9s %s%s"
              % (rec["name"], rec["count"],
                 "" if rec["expected"] is None else rec["expected"],
                 "; ".join(notes), flag))

    # hard gates
    rc = 0
    bad_simple = [r["name"] for r in records if not (r["simple_P"] and r["simple_Q"])]
    if bad_simple:
        print("\nERROR: these configurations are not two SimpleClosed heptagons: %s"
              % ", ".join(bad_simple), file=sys.stderr)
        for r_ in records:
            for w in r_["simple_P_failures"]:
                print("  %s P: %s" % (r_["name"], w), file=sys.stderr)
            for w in r_["simple_Q_failures"]:
                print("  %s Q: %s" % (r_["name"], w), file=sys.stderr)
        rc = 1
    mism = [r for r in records if r["matches_expectation"] is False]
    if mism:
        print("\nDISCREPANCY: %d configuration(s) did not match their expected count:"
              % len(mism), file=sys.stderr)
        for r_ in mism:
            print("  %s: expected %s, got %s" % (r_["name"], r_["expected"], r_["count"]),
                  file=sys.stderr)
        rc = 1
    cert = next((r for r in records if r["name"] == "certificate_38"), None)
    if cert is not None:
        if cert["count"] == 38:
            print("\nCERTIFICATE: data/lower_bound/lower_bound_38.json gives exactly 38 "
                  "intersection points, as claimed (JSON's own record: %s)."
                  % certdoc["verified"]["boundary_intersections_I"])
        else:
            print("\nCRITICAL: the certificate gives %s intersection points, not 38."
                  % cert["count"], file=sys.stderr)
            rc = 1
    print("\nwrote %d SVGs, gallery_summary.json, gallery_summary.csv, index.html to %s"
          % (len(records), OUT_DIR))
    return rc


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
