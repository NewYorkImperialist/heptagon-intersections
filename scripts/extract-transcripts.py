#!/usr/bin/env python3
"""Regenerate the derived Claude Code transcripts in transcripts/claude/.

The raw session logs are Claude Code's own JSONL files, ~18 MB, the bulk of
which is tool OUTPUT (file dumps, build logs, command results) rather than
conversation.  Committing them verbatim would add megabytes of noise that
duplicates the repository's own contents, so what is committed is a derived
transcript: every user message, every assistant reply, and a one-line record of
each tool invocation.

WHAT IS OMITTED, deliberately:
  * tool result bodies;
  * the assistant's internal reasoning blocks;
  * harness scaffolding (system reminders, slash-command wrappers).

WHAT IS NORMALISED:
  * absolute paths under the user's home directory become `~`.

Provenance: each output file records the SHA-256 of its source log, so the
derivation can be re-run and compared.  See transcripts/MANIFEST.md.

Usage:  python3 scripts/extract-transcripts.py [SOURCE_DIR] [--check]

`--check` regenerates into a temporary directory and reports whether the
committed files still match, without writing.
"""
import json, glob, os, re, sys, hashlib, tempfile, filecmp

DEFAULT_SRC = os.path.expanduser(
    "~/.claude/projects/-Users-jaydenlin-dev-lean-heptagon-intersections")
OUT = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                   "transcripts", "claude")

def clean(t):
    t = re.sub(r'<system-reminder>.*?</system-reminder>', '', t, flags=re.S)
    t = re.sub(r'<task-notification>.*?</task-notification>',
               '*[background task notification]*', t, flags=re.S)
    t = re.sub(r'<local-command-[^>]*>.*?</local-command-[^>]*>', '', t, flags=re.S)
    t = re.sub(r'<command-(name|message|args)>.*?</command-\1>', '', t, flags=re.S)
    return t.strip()

def load(path):
    rows, first, last = [], None, None
    with open(path) as fh:
        for line in fh:
            try: d = json.loads(line)
            except Exception: continue
            ts = d.get("timestamp")
            if ts:
                first = first or ts; last = ts
            m = d.get("message") or {}
            role, c = m.get("role"), m.get("content")
            if role == "user":
                if isinstance(c, list) and any(
                        isinstance(b, dict) and b.get("type") == "tool_result" for b in c):
                    continue
                txt = c if isinstance(c, str) else "".join(
                    b.get("text", "") for b in c
                    if isinstance(b, dict) and b.get("type") == "text")
                txt = clean(txt)
                if txt: rows.append(("user", txt))
            elif role == "assistant" and isinstance(c, list):
                for b in c:
                    if not isinstance(b, dict): continue
                    if b.get("type") == "text":
                        t = clean(b.get("text", ""))
                        if t: rows.append(("assistant", t))
                    elif b.get("type") == "tool_use":
                        inp = b.get("input") or {}
                        desc = inp.get("description") or inp.get("summary") or inp.get("skill") or ""
                        nm = b.get("name", "")
                        rows.append(("tool", f"{nm}: {desc}" if desc else nm))
    return rows, first, last

def render(rows, first, last, srcname, sha):
    L = [f"# Claude Code session — {first[:10]}\n",
         f"**Session span (UTC):** `{first[:19]}` → `{last[:19]}`  ",
         f"**Source log:** `{srcname}`  ",
         f"**Source SHA-256:** `{sha}`\n",
         "> **This is a derived transcript, not a verbatim copy.** It contains the",
         "> conversation — every user message and every assistant reply — plus a one-line",
         "> record of each tool invocation. It OMITS: tool *output* bodies (file dumps,",
         "> build logs, command results), the assistant's internal reasoning blocks, and",
         "> harness scaffolding such as system reminders. Absolute paths under the user's",
         "> home directory are rewritten to `~`. The source log's SHA-256 is recorded",
         "> above so the derivation can be re-run and checked; see `../MANIFEST.md`.\n",
         "---\n"]
    for role, txt in rows:
        txt = txt.replace(os.path.expanduser("~"), "~")
        if role == "user":       L.append(f"\n## User\n\n{txt}\n")
        elif role == "assistant": L.append(f"\n**Claude:**\n\n{txt}\n")
        else:                     L.append(f"\n<sub>`tool` {txt}</sub>\n")
    return "\n".join(L)

def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    check = "--check" in sys.argv
    src = args[0] if args else DEFAULT_SRC
    files = sorted(glob.glob(os.path.join(src, "*.jsonl")))
    if not files:
        print(f"no .jsonl session logs under {src}", file=sys.stderr); return 2
    built = []
    for f in files:
        rows, first, last = load(f)
        if not rows: continue
        sha = hashlib.sha256(open(f, "rb").read()).hexdigest()
        built.append((first, render(rows, first, last, os.path.basename(f), sha)))
    built.sort(key=lambda t: t[0])
    used = {"2026-09-13": 1}          # session-01 that day is the received transcript
    dest = tempfile.mkdtemp() if check else OUT
    os.makedirs(dest, exist_ok=True)
    names = []
    for first, body in built:
        day = first[:10]; used[day] = used.get(day, 0) + 1
        name = f"{day}-claude-session-{used[day]:02d}.md"
        open(os.path.join(dest, name), "w").write(body)
        names.append(name)
    if check:
        bad = [n for n in names
               if not (os.path.exists(os.path.join(OUT, n))
                       and filecmp.cmp(os.path.join(OUT, n), os.path.join(dest, n), shallow=False))]
        print("MATCH: committed transcripts reproduce exactly" if not bad
              else "DIFFER: " + ", ".join(bad))
        return 1 if bad else 0
    print("wrote " + ", ".join(names))
    return 0

if __name__ == "__main__":
    sys.exit(main())
