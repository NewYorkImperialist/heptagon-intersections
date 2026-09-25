#!/usr/bin/env python3
"""make_tables.py -- LaTeX fragments for the audit document.

Everything this writes is copied mechanically out of the two generators'
outputs:

    out/lean_excerpts.json          (extract_lean.py -- verbatim Lean)
    out/gallery/gallery_summary.json (gallery.py     -- exact counts)
    out/negative_tests_A.log        (negative-tests.sh --groups A)
    results/validation/..._negative_tests_L.log   (--lean --groups L)
    results/validation/..._headline_build.log     (lake build Headline)
    out/axiom_check_headline.log    (verify-all.sh --axiom-log, over it)

Nothing here retypes Lean source and nothing here recomputes a count.  The
LaTeX escaping is `extract_lean.latex_escape`, i.e. the same routine that
produced `out/lean_excerpts.tex`, so the table and the appendix cannot
disagree about what the code says.

Outputs, in out/:
    statement_table.tex   the section 2 two-column table
    gallery_table.tex     the section 3 count table
    gallery_figures.tex   the section 3 figures
    mutation_tables.tex   the section 4 group-A verdict table
    group_l.tex           the section 4 group-L block, or its hedge
    headline_facts.tex    the section 5 transcript evidence
    facts.tex             \\newcommand's for every number quoted in prose
"""

from __future__ import annotations

import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "out")
sys.path.insert(0, HERE)

import extract_lean  # noqa: E402


def load_decls() -> dict:
    with open(os.path.join(OUT, "lean_excerpts.json")) as f:
        data = json.load(f)
    return {d["name"]: d for d in data["declarations"]}


def load_gallery() -> dict:
    with open(os.path.join(OUT, "gallery", "gallery_summary.json")) as f:
        return json.load(f)


def lean_block(text: str, unmapped: set[str], size: str = r"\scriptsize") -> str:
    """One declaration as a stack of non-wrapping typewriter lines."""
    out = [r"{" + size + r"\ttfamily\setlength{\parindent}{0pt}\raggedright"]
    for line in text.split("\n"):
        esc = extract_lean.latex_escape(line, unmapped)
        esc = esc.replace(" ", "~")
        out.append(r"\mbox{}" + esc + r"\\[-1pt]")
    out.append(r"}")
    return "\n".join(out)


# --- section 2 -------------------------------------------------------------
# (mathematics, declaration name, note).  The mathematics column is the only
# prose here; the Lean column is fetched, never written.
ROWS = [
    (
        r"$P$ is a closed heptagon that does not cross itself: "
        r"no side is a point, non-adjacent sides are disjoint, and two "
        r"consecutive sides meet exactly in the vertex they share.",
        "SimpleClosed",
        r"This is simplicity \emph{as a curve} and nothing more. Three "
        r"collinear vertices are deliberately allowed --- a straight "
        r"vertex is not excluded here. \texttt{Adjacent} is cyclic "
        r"adjacency on $\mathbb{Z}/7$.",
    ),
    (
        r"The object under study is an ordered pair $(P,Q)$ of such "
        r"heptagons in the plane. Nothing else is assumed about it.",
        "Pair9",
        r"The fourteen vertices are one function \texttt{V}; "
        r"\texttt{pP\,i} $=i$ and \texttt{pQ\,i} $=7+i$ split them. "
        r"There is no general-position field, and no non-degeneracy "
        r"field. The two \texttt{simple} fields are the whole hypothesis.",
    ),
    (
        r"$\partial P=\bigcup_{i\in\mathbb{Z}/7}[P_i,P_{i+1}]$, the union "
        r"of the seven closed sides; likewise $\partial Q$.",
        "bdryP9",
        r"\texttt{segment $\mathbb{R}$ a b} is Mathlib's \emph{closed} "
        r"segment $\{(1-t)a+tb : 0\le t\le 1\}$, so endpoints are "
        r"included. \texttt{sideP9} is that segment; \texttt{bdryQ9} is "
        r"the same with \texttt{pQ}.",
    ),
    (
        r"The set being counted is $\partial P\cap\partial Q$: the points "
        r"of the plane lying on both boundaries.",
        "points9",
        r"A set of points, not a list of crossings and not a multiset. "
        r"A point where three sides concur is one element, not two.",
    ),
    (
        r"\emph{Assumed:} no vertex of $P$ equals a vertex of $Q$. "
        r"(This is the conclusion of AKR \S9.1; see \S7.)",
        "attainedCoincFree",
        r"The middle clause is the assumption, written out. It forbids "
        r"\emph{equality} of vertices only --- a vertex lying in the "
        r"interior of the other polygon's side is \emph{not} excluded, "
        r"and is handled by the proof.",
    ),
    (
        r"If $\partial P\cap\partial Q$ is finite and $P,Q$ share no "
        r"vertex, then $\#(\partial P\cap\partial Q)\le 38$.",
        "points9_le_38_of_coincFree",
        r"\texttt{ncard} is the cardinality of a set as a natural number. "
        r"\texttt{hfin} is the finiteness hypothesis; without it the count "
        r"is not a number at all (see the last row of \S3).",
    ),
    (
        r"$38$ is attained, and is the largest attained value: it is the "
        r"maximum, not merely an upper bound.",
        "isGreatest_38_of_coincFree",
        r"\texttt{IsGreatest S a} unfolds to $a\in S \wedge \forall b\in "
        r"S,\ b\le a$. The membership half is the explicit certificate of "
        r"\S3; the bound half is the row above.",
    ),
]


def write_statement_table(decls: dict, unmapped: set[str]) -> None:
    parts = [
        "% generated by docs/audit/make_tables.py -- do not edit by hand",
        r"\begingroup",
        r"\setlength{\tabcolsep}{4pt}",
        r"\renewcommand{\arraystretch}{1.15}",
    ]
    parts.append(r"\noindent\begin{tabular}"
                 r"{@{}p{0.27\textwidth}@{\hspace{9pt}}p{0.70\textwidth}@{}}")
    parts.append(r"\toprule")
    parts.append(r"\textbf{the mathematics} & \textbf{the Lean, verbatim}\\")
    parts.append(r"\bottomrule")
    parts.append(r"\end{tabular}\par\smallskip")
    for k, (math, name, note) in enumerate(ROWS):
        d = decls[name]
        parts.append(r"\noindent\begin{tabular}"
                     r"{@{}p{0.27\textwidth}@{\hspace{9pt}}p{0.70\textwidth}@{}}")
        parts.append((r"\textbf{(%d)}\ " % (k + 1)) + math + " & "
                     + lean_block(d["text"], unmapped)
                     + r"\par\smallskip{\footnotesize\ttfamily %s:%d}\\"
                     % (extract_lean.latex_escape(d["file"], unmapped), d["line"]))
        parts.append(r"\end{tabular}")
        parts.append(r"\par\smallskip\noindent\hspace*{0.29\textwidth}"
                     r"\begin{minipage}{0.70\textwidth}"
                     r"{\footnotesize\textit{Note.}\ " + note + r"}\end{minipage}")
        parts.append(r"\par\medskip\noindent\rule{\textwidth}{0.3pt}\par\smallskip")
    parts.append(r"\endgroup")
    with open(os.path.join(OUT, "statement_table.tex"), "w") as f:
        f.write("\n".join(parts) + "\n")


# --- section 3 -------------------------------------------------------------
ORDER = [
    "certificate_38",
    "easy_lens_2",
    "easy_bars_cross_4",
    "easy_slotted_and_bar_8",
    "easy_turned_pair_14",
    "awkward_vertex_in_edge_interior",
    "awkward_three_collinear_in_P",
    "awkward_shared_vertex",
    "awkward_tangential_touch",
    "awkward_overlapping_sides_infinite",
]


def gal_index(g: dict) -> dict:
    recs = g["configurations"] if isinstance(g, dict) and "configurations" in g else g
    return {r["name"]: r for r in recs}


def write_gallery_table(g: dict) -> None:
    idx = gal_index(g)
    rows = []
    for name in ORDER:
        r = idx[name]
        cnt = str(r["count"])
        if cnt == "infinite":
            cnt = r"\textsc{infinite}"
        flags = []
        if not r.get("no_vertex_on_other", True):
            flags.append(r"no vertex on other: \textbf{fails}")
        if not r.get("general_position_all_14", True):
            flags.append("not general position")
        simple = "yes" if (r.get("simple_P") and r.get("simple_Q")) else "NO"
        rows.append(
            r"\texttt{%s} & %s & %s & %s & %s\\"
            % (name.replace("_", r"\_"), simple, cnt, str(r["expected"]),
               "; ".join(flags) if flags else "---")
        )
    body = "\n".join(rows)
    tex = (
        "% generated by docs/audit/make_tables.py -- do not edit by hand\n"
        r"\begingroup\footnotesize" "\n"
        r"\setlength{\tabcolsep}{4pt}" "\n"
        r"\noindent\begin{tabular}{@{}lccp{0.09\textwidth}p{0.30\textwidth}@{}}" "\n"
        r"\toprule" "\n"
        r"configuration & both simple? & \textbf{computed} & you should get "
        r"& degeneracies present\\" "\n"
        r"\midrule" "\n"
        + body + "\n"
        r"\bottomrule" "\n"
        r"\end{tabular}" "\n"
        r"\endgroup" "\n"
    )
    with open(os.path.join(OUT, "gallery_table.tex"), "w") as f:
        f.write(tex)


def write_gallery_figures(g: dict) -> None:
    """The certificate full width; the other nine four to a page."""
    idx = gal_index(g)

    def cell(name: str, width: str) -> list[str]:
        r = idx[name]
        cnt = str(r["count"])
        if cnt == "infinite":
            cnt = r"\textsc{infinite}"
        return [
            r"\begin{minipage}[t]{%s\textwidth}\centering" % width,
            r"\includegraphics[width=\linewidth]{out/png/%s.svg.png}" % name,
            r"\par\smallskip{\footnotesize\texttt{%s}\\[1pt]"
            r"computed count: \textbf{%s}}" % (name.replace("_", r"\_"), cnt),
            r"\end{minipage}",
        ]

    parts = ["% generated by docs/audit/make_tables.py -- do not edit by hand"]

    # Figure 1: the certificate, on its own, big enough to count by eye.
    parts += [r"\begin{figure}[p]\centering"]
    parts += cell("certificate_38", "0.86")
    parts += [
        r"\caption{The lower-bound certificate. Every point of "
        r"$\partial P\cap\partial Q$ is circled and numbered; there are "
        r"\textbf{38}. This is the same configuration the Lean proof uses as "
        r"its witness, read from the same JSON file.}",
        r"\end{figure}",
    ]

    rest = [n for n in ORDER if n != "certificate_38"]
    groups = [rest[i:i + 4] for i in range(0, len(rest), 4)]
    caps = [
        r"Sanity checks with answers you can see at a glance.",
        r"Degeneracies that the theorem's hypotheses \emph{allow}, plus the "
        r"one they exclude (\texttt{awkward\_shared\_vertex}).",
        r"The honest failure mode: two sides overlap in a whole sub-segment, "
        r"so the intersection is genuinely infinite. It is flagged, not "
        r"miscounted.",
    ]
    for gi, grp in enumerate(groups):
        parts += [r"\begin{figure}[p]\centering"]
        for k, name in enumerate(grp):
            parts += cell(name, "0.45")
            parts.append(r"\hfill" if k % 2 == 0 else r"\par\bigskip")
        parts += [r"\caption{%s}" % caps[min(gi, len(caps) - 1)], r"\end{figure}"]

    with open(os.path.join(OUT, "gallery_figures.tex"), "w") as f:
        f.write("\n".join(parts) + "\n")


def num(n: int) -> str:
    """A LaTeX-safe thousands separator, so no figure is typed into audit.tex."""
    return "{,}".join(reversed([str(n)[max(0, i - 3):i]
                                for i in range(len(str(n)), 0, -3)]))


def write_facts(decls: dict, g: dict, h: dict, ax: dict, l: dict) -> None:
    idx = gal_index(g)
    cmds = [
        "% generated by docs/audit/make_tables.py -- do not edit by hand",
        r"\newcommand{\certcount}{%s}" % idx["certificate_38"]["count"],
        r"\newcommand{\galcount}{%d}" % len(ORDER),
        r"\newcommand{\ndecls}{%d}" % len(decls),
        # --- section 5, every figure counted out of the committed transcript
        r"\newcommand{\hllogpath}{\texttt{%s}}" % tex_esc(HEADLINE_LOG),
        r"\newcommand{\hllogdate}{%s}" % tex_esc(h["header"].get("date", "?")),
        r"\newcommand{\hljobs}{%s}" % num(h["jobs"]),
        r"\newcommand{\hllines}{%s}" % num(h["lines"]),
        r"\newcommand{\hldepends}{%s}" % num(h["depends"]),
        r"\newcommand{\hlsorry}{%s}" % num(h["sorryax"]),
        r"\newcommand{\hlnative}{%s}" % num(h["ofreducebool"]),
        r"\newcommand{\hlreplayed}{%s}" % num(h["replayed"]),
        r"\newcommand{\hlbuilt}{%s}" % num(h["built"]),
        r"\newcommand{\hlnaxioms}{%s}" % num(len(h["axioms"])),
        r"\newcommand{\hlparsed}{%s}"
        % tex_esc(ax["rows"].get("declarations parsed", "?")),
        r"\newcommand{\hlheadlines}{%s}"
        % tex_esc(ax["rows"].get("headline theorems confirmed", "?")),
        r"\newcommand{\hlbadaxioms}{%s}"
        % tex_esc(ax["rows"].get("declarations using a disallowed axiom", "?")),
    ]
    # --- section 4: the L4 paragraph reads as a result only if one exists.
    l4 = [r for r in l["rows"] if r[1].startswith("L4")]
    if l["complete"] and l4 and l4[0][0] == "CAUGHT":
        cmds += [
            r"\newcommand{\Lfourreq}{The requirement is that the build "
            r"\emph{fail}. It does: that is case~L4 of the run recorded "
            r"below.}",
            r"\newcommand{\Lfourupshot}{That is what shows the definitions "
            r"are load-bearing and not decoration --- and it is what the run "
            r"below shows. A reader who spends ten minutes on the %d rows of "
            r"\S2 is therefore checking text that genuinely determines the "
            r"result, not prose sitting above proofs that would compile "
            r"whatever it said.}" % len(ROWS),
        ]
    else:
        cmds += [
            r"\newcommand{\Lfourreq}{The requirement is that the build "
            r"\emph{fail}.}",
            r"\newcommand{\Lfourupshot}{That is what \emph{would} show the "
            r"definitions are load-bearing and not decoration.}",
        ]
    for name, d in decls.items():
        safe = "".join(c for c in name if c.isalpha())
        cmds.append(r"\newcommand{\loc%s}{\texttt{%s}:%d}"
                    % (safe, d["file"].replace("_", r"\_"), d["line"]))
    with open(os.path.join(OUT, "facts.tex"), "w") as f:
        f.write("\n".join(cmds) + "\n")


# --- section 4 -------------------------------------------------------------
# The committed transcript of the four Lean-level mutations.  The document
# degrades to an explicit hedge if this file is missing or truncated, so a
# run that has not finished can never be reported as a result.
NEGTESTS_L_LOG = "results/validation/2026-09-24_negative_tests_L.log"
def tex_esc(s: str) -> str:
    for a, b in (("\\", r"\textbackslash{}"), ("&", r"\&"), ("%", r"\%"),
                 ("$", r"\$"), ("#", r"\#"), ("_", r"\_"), ("{", r"\{"),
                 ("}", r"\}"), ("~", r"\textasciitilde{}"),
                 ("^", r"\textasciicircum{}"), ("<", r"\textless{}"),
                 (">", r"\textgreater{}")):
        s = s.replace(a, b)
    return s.replace("--", "---")


def tex_mono(s: str) -> str:
    """Like tex_esc but for text that is a command line, a flag or a regex:
    no em-dash substitution (it would turn `--lean` into `---lean`), and the
    pipe of an alternation survives."""
    for a, b in (("\\", r"\textbackslash{}"), ("&", r"\&"), ("%", r"\%"),
                 ("$", r"\$"), ("#", r"\#"), ("_", r"\_"), ("{", r"\{"),
                 ("}", r"\}"), ("~", r"\textasciitilde{}"),
                 ("^", r"\textasciicircum{}"), ("<", r"\textless{}"),
                 (">", r"\textgreater{}"), ("|", r"\textbar{}")):
        s = s.replace(a, b)
    return s


# The five verdicts scripts/negative-tests.sh can print (its `row` helper, line
# 93).  ALL FIVE are rendered below.  A table that can only display passes is
# exactly the defect this document exists to rule out: absence of failures in
# the tables of section 4 is a fact about the run, not a limit of the table.
VERDICTS = ("ACCEPTED", "CAUGHT", "NOT CAUGHT", "NOT APPLIED",
            "WRONGLY REJECTED")
BAD_VERDICTS = ("NOT CAUGHT", "NOT APPLIED", "WRONGLY REJECTED")
VERDICT_TEX = {
    "ACCEPTED": r"accepted",
    "CAUGHT": r"\textbf{caught}",
    "NOT CAUGHT": r"\textbf{NOT CAUGHT}",
    "NOT APPLIED": r"\textbf{NOT APPLIED}",
    "WRONGLY REJECTED": r"\textbf{WRONGLY REJECTED}",
}


def parse_negtests(path: str) -> dict:
    """Parse a scripts/negative-tests.sh transcript.

    Safe on a file that is absent, empty, or still being written: `complete`
    is true only when the run printed its own RESULT line.  Nothing here
    invents a verdict, and every one of the five verdicts the suite can print
    is carried through to `rows` -- including the three that mean failure.
    """
    info = {"path": path, "present": False, "complete": False, "header": {},
            "rows": [], "notes": {}, "result": None, "passed": None,
            "failed": None, "failnames": "", "bad": [], "reported": []}
    try:
        with open(path, errors="replace") as f:
            lines = f.read().split("\n")
    except OSError:
        return info
    info["present"] = True

    for line in lines:
        if line.startswith("# ") and " : " in line:
            k, v = line[2:].split(" : ", 1)
            info["header"][k.strip()] = v.strip()
        # the summary table: printf '  %-18s  %-42s  %s\n'
        if len(line) > 22:
            v = line[2:22].strip()
            if v in VERDICTS:
                row = (v, line[22:66].strip(), line[66:].rstrip())
                info["rows"].append(row)
                if v in BAD_VERDICTS:
                    info["bad"].append(row)
        if line.startswith("RESULT:"):
            info["result"] = line.strip()
            info["complete"] = True
            m = re.match(r"RESULT:\s*(\d+) passed,\s*(\d+) failed", line.strip())
            if m:
                info["passed"] = int(m.group(1))
                info["failed"] = int(m.group(2))
        if line.startswith("*** verify-all.sh FAILED TO REJECT:"):
            info["failnames"] = line.strip()

    # The per-case body note: a PASS is stronger when the log also shows that
    # THE MECHANISM UNDER TEST fired, rather than some incidental rejection.
    # The case names are taken from the summary table, because the body's
    # column padding overflows for long names (L4).
    names = [r[1] for r in info["rows"]]
    cur = None
    for line in lines:
        if line.startswith("  PASS  ") or line.startswith("  FAIL  "):
            body = line[8:]
            info["reported"].append((line[2:6], body.split(" ")[0]))
            cur = None
            for nm in names:
                if body.startswith(nm):
                    cur = nm
                    break
            continue
        if cur is None:
            continue
        m = re.search(r"the log shows /(.+)/ -- the mechanism under test fired",
                      line)
        if m:
            info["notes"][cur] = ("fired", m.group(1))
        m = re.search(r"NOTE: /(.+)/ is NOT in the log", line)
        if m:
            info["notes"][cur] = ("incidental", m.group(1))
    return info


def verdict_table(rows: list, notes: dict | None = None) -> str:
    """One verdict table.  Renders every verdict the suite can print."""
    notes = notes or {}
    out = []
    for verdict, case, what in rows:
        out.append(r"\texttt{%s} & %s & %s\\"
                   % (tex_esc(case.split(" ")[0]),
                      tex_esc(" ".join(case.split(" ")[1:])),
                      VERDICT_TEX[verdict]))
        note = tex_esc(what)
        kind_rx = notes.get(case)
        if kind_rx and kind_rx[0] == "fired":
            note += (r"; the log also shows \texttt{%s}, so the mechanism "
                     r"under test is what fired" % tex_mono(kind_rx[1]))
        elif kind_rx and kind_rx[0] == "incidental":
            note += (r"; \textbf{but \texttt{%s} is not in the log} --- it was "
                     r"rejected by some other check than the one this case "
                     r"aims at" % tex_mono(kind_rx[1]))
        out.append(r"\multicolumn{3}{@{}p{0.97\textwidth}@{}}"
                   r"{\hspace{1.2em}\footnotesize\itshape %s}\\[2pt]" % note)
    return (
        r"\begingroup\small\setlength{\tabcolsep}{4pt}" "\n"
        r"\noindent\begin{tabular}{@{}lp{0.52\textwidth}r@{}}" "\n"
        r"\toprule" "\n"
        r"case & the mutation & verdict\\" "\n"
        r"\midrule" "\n" + "\n".join(out) + "\n"
        r"\bottomrule" "\n"
        r"\end{tabular}"
    )


def write_l4_box() -> None:
    """The L4 before/after, read out of scripts/negative-tests.sh itself.

    Not retyped: if the test ever changes what it mutates, this box changes
    with it or this function raises.
    """
    repo = os.path.dirname(os.path.dirname(HERE))
    src = open(os.path.join(repo, "scripts", "negative-tests.sh")).read()
    got = {}
    for key in ("old", "new"):
        needle = '\n%s = "' % key
        i = src.index(needle) + len(needle)
        got[key] = src[i:src.index('"', i)]
    assert got["old"] != got["new"], "L4 mutation is a no-op"
    unmapped: set[str] = set()

    def fmt(s: str) -> str:
        return (r"\mbox{}"
                + extract_lean.latex_escape(s, unmapped).replace(" ", "~"))

    tex = [
        "% generated by docs/audit/make_tables.py from scripts/negative-tests.sh",
        r"{\footnotesize\ttfamily\setlength{\parindent}{0pt}\raggedright",
        fmt(got["old"]) + r"\\[4pt]",
        r"}{\footnotesize\itshape becomes\\[4pt]}",
        r"{\footnotesize\ttfamily\setlength{\parindent}{0pt}\raggedright",
        fmt(got["new"]),
        r"}",
    ]
    with open(os.path.join(OUT, "l4_box.tex"), "w") as f:
        f.write("\n".join(tex) + "\n")
    if unmapped:
        print("L4 box: unmapped unicode", sorted(unmapped))


def write_mutation_tables(a: dict) -> None:
    """The group-A verdict table, copied line for line out of the real run."""
    assert a["present"], "no group-A log at " + a["path"]
    assert a["result"] is not None, "no RESULT line in " + a["path"]
    rows = [r for r in a["rows"] if r[1].startswith("A")]
    assert rows, "no group-A rows in " + a["path"]
    tex = (
        "% generated by docs/audit/make_tables.py from out/negative_tests_A.log\n"
        + verdict_table(rows) +
        r"\par\medskip" "\n"
        r"\noindent\textbf{\texttt{%s}}\ \ (\texttt{bash scripts/negative-tests.sh "
        r"--groups A}, exit~0)" "\n" % tex_esc(a["result"]) +
        r"\endgroup" "\n"
    )
    with open(os.path.join(OUT, "mutation_tables.tex"), "w") as f:
        f.write(tex)


# The hedge.  This is what the document said before any group-L transcript
# existed, and it is what it says again if the log is missing or truncated.
# It is never edited to look better than the evidence: it IS the fallback.
L_HEDGE = r"""\begin{trustbox}
\textbf{An admission about L1--L4.} The four Lean-level mutations --- a planted
\code{sorry} (L1), a declared and used \code{axiom} (L2), a
\code{native\_decide} (L3), and the changed definition described above (L4) ---
are \emph{implemented} in \code{scripts/negative-tests.sh}, at the line numbers
given there, and each specifies exactly which check must reject and with which
message. But \textbf{this repository contains no complete committed log of a
group~L run}, so the paragraph above describes what L4 is \emph{designed} to
demonstrate; it is not reporting a result I can show you.

\smallskip
This matters, and it is the one place where \S4's evidence is thinner than it
looks. Group~A does establish something real and related: A3, A5 and A6 show
that a \code{sorryAx}, a \code{Lean.ofReduceBool} and a project-declared axiom
are each \emph{detected and rejected} when they appear in an axiom log --- which
is the mechanism L1, L2 and L3 exercise end-to-end. Nothing in group~A
substitutes for L4, whose point is different in kind.

\smallskip
\noindent The command is
\code{bash scripts/negative-tests.sh --lean --groups L}; it takes a warm
\code{lean/.lake} and exits~2 rather than~0 if it is asked for and cannot run,
so it cannot be quietly skipped.
\end{trustbox}
"""


def write_group_l(l: dict) -> None:
    """Section 4's group-L block, generated from the run's own transcript.

    Three states, and the document tells the truth in all three:
      * transcript complete and every case caught -> the real verdict table;
      * transcript complete with a failure         -> the real verdict table,
        the failing case named in prose, and the suite's own FAILED TO REJECT
        line quoted.  A failing mutation is a finding about the verifier and
        is reported as one;
      * transcript absent or truncated             -> the hedge above, plus a
        sourced sentence about how far the run had got.
    """
    path = os.path.relpath(l["path"], os.path.dirname(os.path.dirname(HERE)))
    parts = ["% generated by docs/audit/make_tables.py from " + path]

    if not l["complete"]:
        parts.append(L_HEDGE)
        if l["present"] and l["reported"]:
            got = ", ".join("%s %s" % (i, v.lower()) for v, i in l["reported"])
            parts.append(
                r"\noindent{\footnotesize A group~L run was under way when this "
                r"document was generated; the partial transcript at "
                r"\texttt{%s} had reported %d of the four cases (%s) and had "
                r"not printed its own summary. A partial transcript is not a "
                r"result, and nothing above is claimed from it.}"
                % (tex_esc(path), len(l["reported"]), tex_esc(got)))
        elif l["present"]:
            parts.append(
                r"\noindent{\footnotesize A group~L run was under way when this "
                r"document was generated; the partial transcript at "
                r"\texttt{%s} had not yet reported a single case. A partial "
                r"transcript is not a result.}" % tex_esc(path))
        with open(os.path.join(OUT, "group_l.tex"), "w") as f:
            f.write("\n".join(parts) + "\n")
        return

    rows = [r for r in l["rows"] if r[1].startswith("L")]
    hdr = l["header"]
    prov = []
    for k in ("date", "uname", "cmd"):
        if k in hdr:
            prov.append(r"\texttt{%s}~%s" % (tex_esc(k), tex_mono(hdr[k])))
    parts += [
        r"\begin{trustbox}",
        r"\textbf{Group~L was run, and the transcript is committed.} The four "
        r"Lean-level mutations --- a planted \code{sorry} (L1), a declared and "
        r"used \code{axiom} (L2), a \code{native\_decide} (L3), and the changed "
        r"definition described above (L4) --- each plant one defect in a "
        r"copy-on-write clone of this repository, build the clone with a real "
        r"\code{lake build}, and require the verifier to \emph{reject} it. The "
        r"run is recorded at \texttt{%s}." % tex_esc(path),
    ]
    if prov:
        parts.append(r"\par\smallskip{\footnotesize " + r"\quad ".join(prov) + r"}")
    parts.append(r"\end{trustbox}")
    parts.append(verdict_table(rows, l["notes"]))
    parts.append(r"\par\medskip")
    parts.append(r"\noindent\textbf{\texttt{%s}}\ \ (\texttt{bash "
                 r"scripts/negative-tests.sh --lean --groups L})"
                 % tex_esc(l["result"]))

    if l["bad"]:
        names = ", ".join(tex_esc(b[1]) for b in l["bad"])
        parts += [
            r"\par\medskip",
            r"\begin{trustbox}",
            r"\textbf{A case did not pass, and that is a finding.} %d of the "
            r"group~L cases below did not end in a rejection: %s. A mutation "
            r"that the verifier fails to reject, or a mutation that could not "
            r"be applied at all, is a real defect in the checking apparatus --- "
            r"not a presentational problem --- and it is reported here rather "
            r"than omitted. The suite's own summary line is:"
            % (len(l["bad"]), names),
            r"\par\smallskip{\footnotesize\ttfamily\noindent %s}"
            % tex_esc(l["failnames"] or l["result"]),
            r"\end{trustbox}",
        ]
    else:
        l4 = [r for r in rows if r[1].startswith("L4")]
        parts.append(
            r"\par\medskip\noindent Every one of the four mutations was "
            r"rejected by a real build of a real mutated copy.")
        if l4 and l4[0][0] == "CAUGHT":
            parts.append(
                r" L4 is the one that bears on \S2 directly: not one character "
                r"of proof text was altered, only the \emph{definition}, and "
                r"the build still had to fail --- and did. The definitions you "
                r"read in \S2 are therefore load-bearing, not decoration.")
    with open(os.path.join(OUT, "group_l.tex"), "w") as f:
        f.write("\n".join(parts) + "\n")


# --- section 5 -------------------------------------------------------------
# The committed transcript of `cd lean && lake build Headline`, and the
# repository's own axiom checker run over it.  Every figure quoted in section 5
# is counted out of these two files here; none is typed into audit.tex.
HEADLINE_LOG = "results/validation/2026-09-24_headline_build.log"
AXIOM_REPORT = "axiom_check_headline.log"          # in out/, from verify-all.sh
HEADLINE_NAMES = [
    "Heptagon.MainTheorem.isGreatest_38",
    "Heptagon.RealUpperBound.isGreatest_38_real",
    "Heptagon.AKR9.points_le_38_of_no_vertex_on_boundary",
    "Heptagon.AKR9.isGreatest_38_of_E9",
    "Heptagon.Pair9Shift.points9_le_38_of_coincFree",
    "Heptagon.Pair9Shift.isGreatest_38_of_coincFree",
]


def scan_headline_log() -> dict:
    """Count, never retype.  Returns the figures section 5 quotes."""
    repo = os.path.dirname(os.path.dirname(HERE))
    path = os.path.join(repo, HEADLINE_LOG)
    info = {"path": HEADLINE_LOG, "header": {}, "lines": 0, "depends": 0,
            "sorryax": 0, "ofreducebool": 0, "replayed": 0, "built": 0,
            "completed": None, "completed_line": None, "jobs": None,
            "axioms": {}, "headlines": {}}
    with open(path, errors="replace") as f:
        for i, line in enumerate(f, 1):
            info["lines"] = i
            s = line.rstrip("\n")
            if i <= 8 and s.startswith("# ") and " : " in s:
                k, v = s[2:].split(" : ", 1)
                info["header"][k.strip()] = v.strip()
            if "depends on axioms:" in s:
                info["depends"] += 1
                tail = s.split("depends on axioms:", 1)[1]
                for a in re.findall(r"[A-Za-z_][A-Za-z0-9_.]*", tail):
                    info["axioms"][a] = info["axioms"].get(a, 0) + 1
                for nm in HEADLINE_NAMES:
                    if "'" + nm + "'" in s:
                        info["headlines"][nm] = (i, s.strip())
            if "sorryAx" in s:
                info["sorryax"] += 1
            if "ofReduceBool" in s:
                info["ofreducebool"] += 1
            if "] Replayed " in s:
                info["replayed"] += 1
            if "] Built " in s:
                info["built"] += 1
            if s.startswith("Build completed successfully"):
                info["completed"], info["completed_line"] = s.strip(), i
                m = re.search(r"\((\d+) jobs\)", s)
                if m:
                    info["jobs"] = int(m.group(1))
    assert info["completed"], "no 'Build completed successfully' line in " + path
    missing = [n for n in HEADLINE_NAMES if n not in info["headlines"]]
    assert not missing, "headline theorem(s) absent from %s: %s" % (path, missing)
    return info


def scan_axiom_report() -> dict:
    """The checker's own report: its rows, and its verdict line, verbatim."""
    path = os.path.join(OUT, AXIOM_REPORT)
    info = {"rows": {}, "verdict": None, "exit_ok": False}
    for line in open(path, errors="replace"):
        s = line.strip()
        if s.startswith("axiom-check:") and " : " in s:
            k, v = s[len("axiom-check:"):].split(" : ", 1)
            info["rows"][k.strip()] = v.strip()
        if s.startswith("AXIOM CHECK:"):
            info["verdict"] = s
        if s.startswith("AXIOM EVIDENCE ACCEPTED (exit 0)"):
            info["exit_ok"] = True
    assert info["verdict"], "no verdict line in " + path
    return info


def write_headline_facts(h: dict, ax: dict) -> None:
    """Section 5's evidence block: the transcript, quoted with line numbers."""
    def mono(s: str) -> str:
        return r"\mbox{}" + tex_esc(s).replace(" ", "~")

    parts = [
        "% generated by docs/audit/make_tables.py from",
        "%   " + HEADLINE_LOG,
        "%   docs/audit/out/" + AXIOM_REPORT,
        r"\begingroup\footnotesize\ttfamily\setlength{\parindent}{0pt}\raggedright",
    ]
    for k in ("date", "uname", "lean", "cmd"):
        if k not in h["header"]:
            continue
        raw = "# %-6s: %s" % (k, h["header"][k])
        chunks, indent = [], ""
        while len(raw) > 86:
            cut = raw.rfind(", ", 0, 86)
            if cut < 40:
                break
            chunks.append(indent + raw[:cut + 1])
            raw, indent = raw[cut + 2:], "           "
        chunks.append(indent + raw)
        for c in chunks:
            parts.append(r"\mbox{}" + tex_mono(c).replace(" ", "~") + r"\\")
    parts.append(r"\mbox{}~~\dots\\")
    # in the order the transcript prints them, not the order they are listed:
    # five come from Headline.lean, one from AKR9.lean:420 a thousand lines up
    for nm in sorted(HEADLINE_NAMES, key=lambda n: h["headlines"][n][0]):
        i, s = h["headlines"][nm]
        head, tail = s.split("depends on axioms:", 1)
        parts.append(mono(head) + r"\\")
        parts.append(r"\mbox{}~~~~depends~on~axioms:" + tex_esc(tail).replace(" ", "~")
                     + r"\\[2pt]")
    parts.append(mono(h["completed"]) + r"\\")
    parts.append(r"\par\endgroup")
    parts.append(
        r"\par\smallskip\noindent{\footnotesize Quoted from \texttt{%s} "
        r"(%s lines): the provenance header, the six headline axiom lines "
        r"(log lines %s), and the final line~%d.}"
        % (tex_esc(HEADLINE_LOG), "{:,}".format(h["lines"]).replace(",", "{,}"),
           ", ".join(str(i) for i in
                     sorted(h["headlines"][n][0] for n in HEADLINE_NAMES)),
           h["completed_line"]))
    parts.append(r"\par\medskip\noindent{\footnotesize The repository's own "
                 r"axiom checker, run over that transcript "
                 r"(the command boxed above; exit~0) reports:}")
    parts.append(r"\par\smallskip\begingroup\footnotesize\ttfamily"
                 r"\setlength{\parindent}{0pt}\raggedright")
    for k in ("'depends on axioms' lines found", "declarations parsed",
              "declarations using a disallowed axiom", "occurrences of sorryAx",
              "distinct axioms", "headline theorems confirmed"):
        if k in ax["rows"]:
            parts.append(mono("%-40s : %s" % (k, ax["rows"][k])) + r"\\")
    parts.append(r"\par\endgroup")
    parts.append(r"\par\smallskip\noindent{\footnotesize\itshape " +
                 tex_esc(ax["verdict"]) + r"}")
    with open(os.path.join(OUT, "headline_facts.tex"), "w") as f:
        f.write("\n".join(parts) + "\n")


# --- section 6 -------------------------------------------------------------
CLAUSES = [
    r"\code{Pair9} is inhabited: the two \code{SimpleClosed} hypotheses of "
    r"\S2 are satisfiable at all. Without this the whole theory could be "
    r"about an empty type.",
    r"The witness's intersection set is non-empty.",
    r"It is \emph{finite} --- so \code{ncard} is the real cardinality. "
    r"On an infinite set \code{ncard} returns $0$, which would make the "
    r"bound $\le 38$ true and meaningless; this clause closes that door. "
    r"(Clause~(6) already implies it, for exactly that reason; it is stated "
    r"separately for the reader.)",
    r"The witness satisfies \code{hcoinc}: it shares no vertex. The "
    r"hypothesis of the theorem is not contradictory.",
    r"The witness also satisfies the \emph{stronger} condition "
    r"\code{NoVertexOnOther} --- no vertex anywhere on the other boundary.",
    r"Its count is exactly $38$: \textbf{the bound is attained}.",
    r"$\le 37$ is \emph{false} there: \textbf{the bound is not slack}. "
    r"One less is provably wrong, so $38$ is the right constant and not "
    r"an artefact of a lossy estimate. (Immediate from~(6); stated because "
    r"it is the thing a reader wants to see said.)",
    r"$38$ is an attained value.",
    r"$39$ is \emph{not} attained.",
    r"$38$ is the greatest attained value.",
]


def write_nonvacuity(decls: dict, unmapped: set[str]) -> None:
    d = decls["nonVacuity"]
    parts = [
        "% generated by docs/audit/make_tables.py -- do not edit by hand",
        r"\noindent{\footnotesize\ttfamily %s:%d}\par\smallskip"
        % (extract_lean.latex_escape(d["file"], unmapped), d["line"]),
        lean_block(d["text"], unmapped, size=r"\footnotesize"),
        r"\par\medskip\noindent Ten clauses, in order:",
        r"\begin{enumerate}[leftmargin=2.1em,label=\textbf{(\arabic*)}]",
    ]
    for c in CLAUSES:
        parts.append(r"\item " + c)
    parts.append(r"\end{enumerate}")
    parts += [
        r"\par\medskip\noindent These are ten clauses, not ten logically "
        r"independent facts: (6) is the sharpest of them and already implies "
        r"(3) and (7). The content is not the number of clauses but the fact "
        r"that \textbf{(2)--(7) all hold of the \emph{same} configuration}, "
        r"\code{AKR9.certPair9}. Checking hypotheses one at a time would not "
        r"rule out a theorem whose hypotheses are each satisfiable but "
        r"jointly contradictory; a single shared witness does. That is "
        r"precisely the failure mode an absent human reviewer would be "
        r"looking for, and the declaration's own doc-comment says so.",
    ]
    u = decls["isGreatest_attainedCoincFree_unique"]
    parts += [
        r"\par\medskip\noindent A companion records that the maximum is "
        r"\emph{unique} --- any $n$ that is a greatest attained value equals "
        r"$38$:\par\smallskip",
        r"\noindent{\footnotesize\ttfamily %s:%d}\par\smallskip"
        % (extract_lean.latex_escape(u["file"], unmapped), u["line"]),
        lean_block(u["text"], unmapped, size=r"\footnotesize"),
    ]
    with open(os.path.join(OUT, "nonvacuity.tex"), "w") as f:
        f.write("\n".join(parts) + "\n")


def main() -> int:
    repo = os.path.dirname(os.path.dirname(HERE))
    decls = load_decls()
    g = load_gallery()
    a = parse_negtests(os.path.join(OUT, "negative_tests_A.log"))
    l = parse_negtests(os.path.join(repo, NEGTESTS_L_LOG))
    h = scan_headline_log()
    ax = scan_axiom_report()
    unmapped: set[str] = set()
    write_statement_table(decls, unmapped)
    write_gallery_table(g)
    write_gallery_figures(g)
    write_l4_box()
    write_mutation_tables(a)
    write_group_l(l)
    write_headline_facts(h, ax)
    write_nonvacuity(decls, unmapped)
    write_facts(decls, g, h, ax, l)
    if unmapped:
        print("UNMAPPED unicode (emitted literally):", sorted(unmapped))
    print("group A : %s" % (a["result"] or "NO RESULT LINE"))
    if l["complete"]:
        print("group L : %s  -> out/group_l.tex has the REAL verdict table"
              % l["result"])
        for r in l["rows"]:
            print("            %-18s %s" % (r[0], r[1]))
    else:
        print("group L : transcript %s -> out/group_l.tex DEGRADED to the hedge"
              % ("truncated" if l["present"] else "absent"))
    print("headline: %s (line %d), %s 'depends on axioms' lines, "
          "%d sorryAx, %s Replayed / %s Built"
          % (h["completed"], h["completed_line"], h["depends"], h["sorryax"],
             h["replayed"], h["built"]))
    print("axiom   : %s" % ax["verdict"])
    print("wrote statement_table.tex, gallery_table.tex, gallery_figures.tex, "
          "l4_box.tex, mutation_tables.tex, group_l.tex, headline_facts.tex, "
          "nonvacuity.tex, facts.tex")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
