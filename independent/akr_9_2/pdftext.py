#!/usr/bin/env python3
"""Minimal PDF text extractor: inflate FlateDecode content streams, walk the
/Pages tree so page numbers are exact, and interpret Tj/TJ/'/" operators.

No external deps. Known lossy points, recorded so nothing is silently wrong:
  - inter-token horizontal spacing is NOT reconstructed from TJ kerning except
    for large negative kerns (threshold below), so some words run together;
  - superscripts/subscripts are flattened onto the baseline;
  - the fi/fl ligature codepoints of the embedded fonts carry no Latin-1
    meaning and are dropped -> "nite" for "finite".
Use for locating and reading, not for verbatim quotation without a cross-check.
"""
import re, sys, zlib

def load(path):
    return open(path, 'rb').read()

OBJ = re.compile(rb'(\d+)\s+(\d+)\s+obj(.*?)endobj', re.S)

def objects(data):
    out = {}
    for m in OBJ.finditer(data):
        out[int(m.group(1))] = m.group(3)
    return out

def stream_of(body):
    i = body.find(b'stream')
    if i < 0:
        return None
    j = i + len(b'stream')
    if body[j:j+2] == b'\r\n': j += 2
    elif body[j:j+1] in (b'\n', b'\r'): j += 1
    k = body.find(b'endstream', j)
    return body[j:k]

def inflate(body):
    s = stream_of(body)
    if s is None: return None
    try:
        return zlib.decompress(s)
    except Exception:
        try:
            return zlib.decompressobj().decompress(s)
        except Exception:
            return None

def pages(objs):
    """Return ordered list of page object numbers by walking /Type /Pages Kids."""
    root = None
    for n, b in objs.items():
        if b'/Type' in b and b'/Catalog' in b:
            m = re.search(rb'/Pages\s+(\d+)\s+\d+\s+R', b)
            if m: root = int(m.group(1))
    order = []
    def walk(n, seen):
        if n in seen: return
        seen.add(n)
        b = objs.get(n, b'')
        if b'/Type' in b and re.search(rb'/Type\s*/Page\b', b) and not re.search(rb'/Type\s*/Pages\b', b):
            order.append(n); return
        m = re.search(rb'/Kids\s*\[(.*?)\]', b, re.S)
        if not m: return
        for k in re.finditer(rb'(\d+)\s+\d+\s+R', m.group(1)):
            walk(int(k.group(1)), seen)
    if root is not None:
        walk(root, set())
    return order

def content_objs(objs, pageobj):
    b = objs.get(pageobj, b'')
    m = re.search(rb'/Contents\s+(\d+)\s+\d+\s+R', b)
    if m: return [int(m.group(1))]
    m = re.search(rb'/Contents\s*\[(.*?)\]', b, re.S)
    if m: return [int(x.group(1)) for x in re.finditer(rb'(\d+)\s+\d+\s+R', m.group(1))]
    return []

STR = re.compile(rb'\((?:\\.|[^\\()])*\)|<[0-9A-Fa-f\s]*>', re.S)

def unescape(tok):
    if tok.startswith(b'<'):
        h = re.sub(rb'\s', b'', tok[1:-1])
        if len(h) % 2: h += b'0'
        return bytes.fromhex(h.decode())
    s = tok[1:-1]
    out = bytearray(); i = 0
    while i < len(s):
        c = s[i]
        if c == 0x5c:
            i += 1
            if i >= len(s): break
            d = s[i]
            mp = {ord('n'):10, ord('r'):13, ord('t'):9, ord('b'):8, ord('f'):12,
                  ord('('):40, ord(')'):41, ord('\\'):92}
            if d in mp: out.append(mp[d]); i += 1
            elif 0x30 <= d <= 0x37:
                oc = ''
                while i < len(s) and len(oc) < 3 and 0x30 <= s[i] <= 0x37:
                    oc += chr(s[i]); i += 1
                out.append(int(oc, 8) & 0xFF)
            else: out.append(d); i += 1
        else:
            out.append(c); i += 1
    return bytes(out)

TEXTOP = re.compile(rb'(BT|ET|TJ|Tj|T\*|Td|TD|\'|")', re.S)

def render(stream, kern_space=180):
    """Return text. Insert a space when a TJ kern is more negative than
    -kern_space thousandths of an em; insert newline on BT/ET/T*/Td."""
    out = []
    # tokenize crudely: find TJ arrays and Tj strings in order
    pos = 0
    pat = re.compile(rb'\[((?:[^\[\]]|\\.)*)\]\s*TJ|(\((?:\\.|[^\\()])*\)|<[0-9A-Fa-f\s]*>)\s*(Tj|\'|")|(T\*|Td|TD|BT|ET)', re.S)
    for m in pat.finditer(stream):
        if m.group(1) is not None:
            arr = m.group(1); buf = []
            last_end = 0
            for t in re.finditer(rb'(\((?:\\.|[^\\()])*\)|<[0-9A-Fa-f\s]*>)|(-?\d+(?:\.\d+)?)', arr, re.S):
                if t.group(1) is not None:
                    buf.append(unescape(t.group(1)).decode('latin-1'))
                else:
                    v = float(t.group(2))
                    if v <= -kern_space: buf.append(' ')
            out.append(''.join(buf))
        elif m.group(2) is not None:
            out.append(unescape(m.group(2)).decode('latin-1'))
            if m.group(3) in (b"'", b'"'): out.append('\n')
        else:
            op = m.group(4)
            if op in (b'T*', b'Td', b'TD'): out.append('\n')
            elif op == b'ET': out.append('\n')
    return ''.join(out)

if __name__ == '__main__':
    path = sys.argv[1]
    lo = int(sys.argv[2]) if len(sys.argv) > 2 else 1
    hi = int(sys.argv[3]) if len(sys.argv) > 3 else lo
    data = load(path); objs = objects(data); pg = pages(objs)
    for p in range(lo, hi+1):
        if p-1 >= len(pg): break
        print(f"\n===== PDF PAGE {p}  (page obj {pg[p-1]}, content objs {content_objs(objs, pg[p-1])}) =====")
        for c in content_objs(objs, pg[p-1]):
            s = inflate(objs.get(c, b''))
            if s is None:
                print(f"[could not inflate content obj {c}]"); continue
            print(render(s))
