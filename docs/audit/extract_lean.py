#!/usr/bin/env python3
"""
extract_lean.py -- verbatim extraction of named Lean declarations.

Purpose
-------
The audit PDF shows a mathematician what the Lean code *says*.  Every Lean
snippet in that document must be the real source text, character for
character, with a file name and a line number he can check.  This tool is the
only sanctioned way to get Lean text into the document: it reads the actual
`.lean` files in this repository and prints the declarations verbatim.

Two failure modes are made loud rather than silent:

  * a requested declaration that does not exist (renamed, deleted, moved)
    aborts with a clear error naming the file and the declaration;
  * a declaration whose text has *changed* since the document was last
    generated is caught by `--check`, which compares SHA-256 digests against
    the lockfile written by the previous run.  Wire `--check` into whatever
    builds the PDF and the document can never quietly drift away from the
    code.

Usage
-----
    python3 docs/audit/extract_lean.py              # extract, write outputs + lock
    python3 docs/audit/extract_lean.py --check      # verify nothing drifted (exit 1 if so)
    python3 docs/audit/extract_lean.py --print pP   # dump one declaration to stdout
    python3 docs/audit/extract_lean.py --self-test  # run the self-tests only

Outputs (all under docs/audit/out/):
    lean_excerpts.txt    plain text, one block per declaration
    lean_excerpts.tex    LaTeX-escaped, one \\leandecl block per declaration
    lean_excerpts.json   machine-readable (file, line, kind, text, sha256)
    lean_excerpts.lock.json   digests only; the drift tripwire
    lean_preamble.tex    the macros lean_excerpts.tex needs

Python 3 standard library only.  No third-party packages.
"""

from __future__ import annotations

import hashlib
import json
import re
import sys
from pathlib import Path

# ---------------------------------------------------------------------------
# What to extract.  These are the statement surface of the headline theorem:
# the reader of the PDF must be able to see every definition that the final
# statement mentions, so that "38" is a claim about something he can read.
# ---------------------------------------------------------------------------

TARGETS: list[tuple[str, str]] = [
    # the index maps that say which of the fourteen vertices is P and which Q
    ("lean/ResidualSymBase.lean", "pP"),
    ("lean/ResidualSymBase.lean", "pQ"),
    # simplicity, the pair of heptagons, and AKR section 9's conclusion
    ("lean/AKR9.lean", "SimpleClosed"),
    ("lean/AKR9.lean", "Pair9"),
    ("lean/AKR9.lean", "NoVertexOnOther"),
    # the boundaries, as honest point sets of the real plane
    ("lean/AKR9.lean", "sideP9"),
    ("lean/AKR9.lean", "sideQ9"),
    ("lean/AKR9.lean", "bdryP9"),
    ("lean/AKR9.lean", "bdryQ9"),
    ("lean/AKR9.lean", "points9"),
    # the headline results
    ("lean/Pair9Shift.lean", "attainedCoincFree"),
    ("lean/Pair9Shift.lean", "points9_le_38_of_coincFree"),
    ("lean/Pair9Shift.lean", "isGreatest_38_of_coincFree"),
]

REPO_ROOT = Path(__file__).resolve().parents[2]
OUT_DIR = Path(__file__).resolve().parent / "out"

# Keywords that can open a top-level declaration.
DECL_KEYWORDS = (
    "def",
    "theorem",
    "lemma",
    "structure",
    "abbrev",
    "instance",
    "inductive",
    "class",
    "example",
)

# Modifiers that may sit between column 0 and the keyword.
MODIFIERS = ("private", "protected", "noncomputable", "partial", "unsafe", "scoped", "local")

_MOD = r"(?:(?:%s)\s+)*" % "|".join(MODIFIERS)
_KW = r"(?:%s)" % "|".join(DECL_KEYWORDS)


class ExtractionError(Exception):
    """A requested declaration could not be found, or the file is missing."""


def _decl_start_re(name: str) -> re.Pattern[str]:
    """Match a line that opens the declaration called `name`, at column 0."""
    return re.compile(r"^(?P<mods>%s)(?P<kw>%s)\s+(?P<name>%s)(?![A-Za-z0-9_'!?])"
                      % (_MOD, _KW, re.escape(name)))


def _is_top_level_start(line: str) -> bool:
    """Is this line the beginning of a new top-level item?

    Lean 4 is whitespace sensitive: every continuation line of a declaration
    is indented.  So any non-blank line starting at column 0 after the opening
    line ends the declaration.  (Comment openers and `end`/`namespace`/`open`
    etc. all land here too, which is what we want.)
    """
    return bool(line.strip()) and not line[0].isspace()


def find_decl(lines: list[str], name: str) -> tuple[int, int, str]:
    """Locate declaration `name` in `lines`.

    Returns (start_index, end_index_exclusive, keyword), 0-based, where
    start_index is the line carrying the `def`/`theorem`/`structure` keyword.
    Raises ExtractionError if not found, or if found more than once.
    """
    pat = _decl_start_re(name)
    hits = [i for i, ln in enumerate(lines) if pat.match(ln)]
    if not hits:
        raise ExtractionError("declaration %r not found" % name)
    if len(hits) > 1:
        raise ExtractionError(
            "declaration %r found %d times (lines %s); the extractor refuses to guess"
            % (name, len(hits), ", ".join(str(h + 1) for h in hits))
        )
    start = hits[0]
    kw = pat.match(lines[start]).group("kw")
    end = len(lines)
    for i in range(start + 1, len(lines)):
        if _is_top_level_start(lines[i]):
            end = i
            break
    # drop trailing blank lines from the body
    while end > start + 1 and not lines[end - 1].strip():
        end -= 1
    return start, end, kw


def find_docstring(lines: list[str], start: int) -> str | None:
    """The `/-- ... -/` doc comment immediately preceding line `start`, if any.

    Attribute lines and `open ... in` prefixes are skipped over on the way up.
    """
    i = start - 1
    while i >= 0:
        s = lines[i].strip()
        if s.endswith(" in") or s.startswith("@[") or s.startswith("attribute "):
            i -= 1
            continue
        break
    if i < 0 or not lines[i].rstrip().endswith("-/"):
        return None
    j = i
    while j >= 0 and not lines[j].lstrip().startswith("/--"):
        if lines[j].lstrip().startswith("/-!") or lines[j].lstrip().startswith("/- "):
            return None
        j -= 1
    if j < 0:
        return None
    return "".join(lines[j:i + 1]).rstrip("\n")


def extract(rel_path: str, name: str) -> dict:
    """Extract one declaration from one file of the repository."""
    path = REPO_ROOT / rel_path
    if not path.is_file():
        raise ExtractionError("no such file: %s" % path)
    lines = path.read_text(encoding="utf-8").splitlines(keepends=True)
    try:
        start, end, kw = find_decl(lines, name)
    except ExtractionError as exc:
        raise ExtractionError("%s: %s" % (rel_path, exc)) from None
    text = "".join(lines[start:end]).rstrip("\n")
    return {
        "name": name,
        "file": rel_path,
        "line": start + 1,
        "end_line": end,
        "kind": kw,
        "doc": find_docstring(lines, start),
        "text": text,
        "sha256": hashlib.sha256(text.encode("utf-8")).hexdigest(),
    }


# ---------------------------------------------------------------------------
# LaTeX
# ---------------------------------------------------------------------------

LATEX_SPECIALS = {
    "\\": r"\textbackslash{}",
    "{": r"\{",
    "}": r"\}",
    "$": r"\$",
    "&": r"\&",
    "#": r"\#",
    "^": r"\textasciicircum{}",
    "_": r"\_",
    "~": r"\textasciitilde{}",
    "%": r"\%",
}

# Lean's unicode, as LaTeX.  Anything not in here is reported by --check and
# by the normal run, so the document author is never surprised by a missing
# glyph.
UNICODE_MAP = {
    "ℝ": r"$\mathbb{R}$", "ℕ": r"$\mathbb{N}$", "ℤ": r"$\mathbb{Z}$",
    "ℚ": r"$\mathbb{Q}$", "ℓ": r"$\ell$",
    "∀": r"$\forall$", "∃": r"$\exists$", "¬": r"$\lnot$",
    "∧": r"$\land$", "∨": r"$\lor$", "→": r"$\to$", "↦": r"$\mapsto$",
    "↔": r"$\leftrightarrow$", "⟶": r"$\longrightarrow$",
    "≤": r"$\le$", "≥": r"$\ge$", "≠": r"$\ne$", "≡": r"$\equiv$",
    "∈": r"$\in$", "∉": r"$\notin$", "⊆": r"$\subseteq$", "⊂": r"$\subset$",
    "∩": r"$\cap$", "∪": r"$\cup$", "⋂": r"$\bigcap$", "⋃": r"$\bigcup$",
    "∅": r"$\emptyset$", "×": r"$\times$", "·": r"$\cdot$",
    "⟨": r"$\langle$", "⟩": r"$\rangle$", "⌊": r"$\lfloor$", "⌋": r"$\rfloor$",
    "α": r"$\alpha$", "β": r"$\beta$", "γ": r"$\gamma$", "δ": r"$\delta$",
    "ε": r"$\varepsilon$", "σ": r"$\sigma$", "τ": r"$\tau$", "φ": r"$\varphi$",
    "∘": r"$\circ$", "±": r"$\pm$", "∑": r"$\sum$", "∏": r"$\prod$",
    "⁻": r"$^{-}$", "¹": r"$^{1}$", "²": r"$^{2}$", "₀": r"$_{0}$",
    "₁": r"$_{1}$", "₂": r"$_{2}$", "‹": r"$\langle$", "›": r"$\rangle$",
    "…": r"\ldots{}", "–": "--", "—": "---", "“": "``", "”": "''",
    "‘": "`", "’": "'", "≫": r"$\gg$", "≪": r"$\ll$",
}


def latex_escape(text: str, report_unmapped: set[str] | None = None) -> str:
    """Escape `text` for LaTeX, mapping the Lean unicode we know about."""
    out: list[str] = []
    for ch in text:
        if ch in LATEX_SPECIALS:
            out.append(LATEX_SPECIALS[ch])
        elif ch in UNICODE_MAP:
            out.append(UNICODE_MAP[ch])
        elif ord(ch) < 128:
            out.append(ch)
        else:
            if report_unmapped is not None:
                report_unmapped.add(ch)
            out.append(ch)  # left literal; needs a unicode-aware engine
    return "".join(out)


def latex_lines(text: str, unmapped: set[str]) -> str:
    """A LaTeX block for a declaration: one \\leanline per source line,
    leading indentation preserved with hard spaces."""
    rendered = []
    for raw in text.split("\n"):
        stripped = raw.lstrip(" ")
        indent = len(raw) - len(stripped)
        body = latex_escape(stripped, unmapped)
        rendered.append("\\leanline{%s%s}" % ("~" * indent, body))
    return "\n".join(rendered)


PREAMBLE = r"""% lean_preamble.tex -- generated by docs/audit/extract_lean.py
% Macros used by lean_excerpts.tex.  Input this in the document preamble.
% The excerpts contain literal unicode for any glyph the extractor could not
% map; compile with XeLaTeX or LuaLaTeX, or extend UNICODE_MAP in the tool.
\providecommand{\leanline}[1]{\noindent\texttt{\small #1}\par}
\newenvironment{leandecl}[3]%
  {\par\medskip\noindent\textbf{\texttt{#1}}\hfill{\small\texttt{#2}:#3}\par
   \nopagebreak\smallskip\begingroup\setlength{\parindent}{0pt}}%
  {\endgroup\par\medskip}
"""


# ---------------------------------------------------------------------------
# Self-tests.  These run on every invocation and abort the tool on failure.
# ---------------------------------------------------------------------------

SAMPLE = """namespace Demo

/-- Doc for alpha. -/
def alpha (i : Fin 7) : Nat :=
  i.val + 1

/-- Doc for beta,
spanning two lines. -/
theorem beta (i : Fin 7) : alpha i > 0 := by
  simp [alpha]

structure Gamma where
  /-- a field -/
  x : Nat
  y : Nat

def alphabet : Nat := 26

noncomputable def delta : Nat := 4

end Demo
"""


def _check(cond: bool, msg: str, results: list[tuple[str, bool]]) -> None:
    results.append((msg, bool(cond)))


def self_test(verbose: bool = True) -> list[tuple[str, bool]]:
    results: list[tuple[str, bool]] = []
    lines = SAMPLE.splitlines(keepends=True)

    s, e, kw = find_decl(lines, "alpha")
    body = "".join(lines[s:e]).rstrip("\n")
    _check(kw == "def", "find_decl: keyword of `alpha` is def", results)
    _check(body == "def alpha (i : Fin 7) : Nat :=\n  i.val + 1",
           "find_decl: `alpha` body runs to the end of its indented block", results)
    _check(find_docstring(lines, s) == "/-- Doc for alpha. -/",
           "find_docstring: single-line doc comment recovered", results)

    s2, e2, kw2 = find_decl(lines, "beta")
    _check(kw2 == "theorem", "find_decl: keyword of `beta` is theorem", results)
    _check("simp [alpha]" in "".join(lines[s2:e2]),
           "find_decl: tactic block of `beta` included", results)
    _check((find_docstring(lines, s2) or "").count("\n") == 1,
           "find_docstring: two-line doc comment recovered", results)

    s3, e3, kw3 = find_decl(lines, "Gamma")
    _check(kw3 == "structure", "find_decl: keyword of `Gamma` is structure", results)
    _check("y : Nat" in "".join(lines[s3:e3]),
           "find_decl: all fields of `Gamma` included", results)
    _check("def alphabet" not in "".join(lines[s3:e3]),
           "find_decl: `Gamma` stops before the next declaration", results)

    s4, _, _ = find_decl(lines, "alphabet")
    _check(lines[s4].startswith("def alphabet"),
           "find_decl: `alpha` prefix does not match `alphabet`", results)
    s5, _, kw5 = find_decl(lines, "delta")
    _check(kw5 == "def" and lines[s5].startswith("noncomputable"),
           "find_decl: modifiers before the keyword are handled", results)

    missing = False
    try:
        find_decl(lines, "epsilon")
    except ExtractionError:
        missing = True
    _check(missing, "find_decl: a missing declaration raises ExtractionError", results)

    dup = SAMPLE + "\ndef alpha : Nat := 0\n"
    ambiguous = False
    try:
        find_decl(dup.splitlines(keepends=True), "alpha")
    except ExtractionError:
        ambiguous = True
    _check(ambiguous, "find_decl: a duplicated declaration raises rather than guessing", results)

    _check(latex_escape("a_b {c} 50% \\x") == r"a\_b \{c\} 50\% \textbackslash{}x",
           "latex_escape: LaTeX specials escaped", results)
    _check(latex_escape("x ∈ ℝ") == r"x $\in$ $\mathbb{R}$",
           "latex_escape: Lean unicode mapped", results)
    _check(latex_lines("  y", set()) == r"\leanline{~~y}",
           "latex_lines: indentation preserved", results)

    if verbose:
        for msg, ok in results:
            print("  [%s] %s" % ("ok" if ok else "FAIL", msg))
    failed = [m for m, ok in results if not ok]
    if failed:
        print("SELF-TEST FAILURE in extract_lean.py:", file=sys.stderr)
        for m in failed:
            print("  - " + m, file=sys.stderr)
        raise SystemExit(2)
    return results


# ---------------------------------------------------------------------------
# Driver
# ---------------------------------------------------------------------------

def extract_all() -> list[dict]:
    records: list[dict] = []
    errors: list[str] = []
    for rel, name in TARGETS:
        try:
            records.append(extract(rel, name))
        except ExtractionError as exc:
            errors.append(str(exc))
    if errors:
        print("EXTRACTION FAILED -- the document cannot be built from this tree:",
              file=sys.stderr)
        for e in errors:
            print("  - " + e, file=sys.stderr)
        raise SystemExit(1)
    return records


def write_outputs(records: list[dict]) -> set[str]:
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    unmapped: set[str] = set()

    txt = ["# Verbatim Lean excerpts",
           "# generated by docs/audit/extract_lean.py -- do not edit by hand",
           ""]
    tex = ["% Verbatim Lean excerpts, LaTeX-escaped",
           "% generated by docs/audit/extract_lean.py -- do not edit by hand",
           "% requires lean_preamble.tex", ""]
    for r in records:
        header = "%s  (%s:%d)" % (r["name"], r["file"], r["line"])
        txt.append("=" * len(header))
        txt.append(header)
        txt.append("=" * len(header))
        txt.append(r["text"])
        txt.append("")
        tex.append("\\begin{leandecl}{%s}{%s}{%d}"
                   % (latex_escape(r["name"], unmapped),
                      latex_escape(r["file"], unmapped), r["line"]))
        tex.append(latex_lines(r["text"], unmapped))
        tex.append("\\end{leandecl}")
        tex.append("")

    (OUT_DIR / "lean_excerpts.txt").write_text("\n".join(txt), encoding="utf-8")
    (OUT_DIR / "lean_excerpts.tex").write_text("\n".join(tex), encoding="utf-8")
    (OUT_DIR / "lean_preamble.tex").write_text(PREAMBLE, encoding="utf-8")
    (OUT_DIR / "lean_excerpts.json").write_text(
        json.dumps({"generator": "docs/audit/extract_lean.py",
                    "declarations": records}, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8")
    lock = {"%s::%s" % (r["file"], r["name"]): r["sha256"] for r in records}
    (OUT_DIR / "lean_excerpts.lock.json").write_text(
        json.dumps(lock, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    return unmapped


def check(records: list[dict]) -> int:
    lock_path = OUT_DIR / "lean_excerpts.lock.json"
    if not lock_path.is_file():
        print("DRIFT CHECK FAILED: no lockfile at %s; run the tool without --check first."
              % lock_path, file=sys.stderr)
        return 1
    lock = json.loads(lock_path.read_text(encoding="utf-8"))
    current = {"%s::%s" % (r["file"], r["name"]): r["sha256"] for r in records}
    bad = []
    for k, v in current.items():
        if k not in lock:
            bad.append("%s is new (not in the lockfile)" % k)
        elif lock[k] != v:
            bad.append("%s CHANGED in the Lean source since the document was generated" % k)
    for k in lock:
        if k not in current:
            bad.append("%s is in the lockfile but no longer requested" % k)
    if bad:
        print("DRIFT CHECK FAILED -- regenerate the audit document:", file=sys.stderr)
        for b in bad:
            print("  - " + b, file=sys.stderr)
        return 1
    print("drift check: all %d declarations match the lockfile." % len(current))
    return 0


def main(argv: list[str]) -> int:
    args = argv[1:]
    print("extract_lean.py self-tests:")
    self_test()
    if "--self-test" in args:
        print("self-tests only; nothing extracted.")
        return 0

    if "--print" in args:
        name = args[args.index("--print") + 1]
        hits = [t for t in TARGETS if t[1] == name]
        if not hits:
            print("EXTRACTION FAILED: %r is not in TARGETS" % name, file=sys.stderr)
            return 1
        r = extract(*hits[0])
        print("\n-- %s:%d" % (r["file"], r["line"]))
        print(r["text"])
        return 0

    records = extract_all()
    if "--check" in args:
        return check(records)

    unmapped = write_outputs(records)
    print("\nextracted %d declarations verbatim:" % len(records))
    for r in records:
        print("  %-28s %s:%-5d %-9s %2d lines  %s"
              % (r["name"], r["file"], r["line"], r["kind"],
                 r["text"].count("\n") + 1, r["sha256"][:12]))
    print("\nwrote: %s" % ", ".join(sorted(p.name for p in OUT_DIR.glob("lean_*"))))
    if unmapped:
        print("note: %d unicode characters have no LaTeX mapping and were emitted "
              "literally (use XeLaTeX/LuaLaTeX, or extend UNICODE_MAP): %s"
              % (len(unmapped), " ".join(sorted(unmapped))))
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
