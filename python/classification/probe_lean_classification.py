"""Time the full kernel enumeration after building OrderTypeClassification.
Run from the repository root; optional argument is the timeout in seconds.
"""
from pathlib import Path
import os
import signal
import subprocess
import sys
import tempfile
import time

limit = float(sys.argv[1]) if len(sys.argv) > 1 else 180
root = Path(__file__).resolve().parents[2]
with tempfile.TemporaryDirectory(prefix='heptagon-classification-') as tmp:
    probe = Path(tmp) / 'FullClassificationProbe.lean'
    probe.write_text('''import OrderTypeClassification
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Heptagon.OrderTypeClassification
theorem full_enumeration : exceptionalPolygons = expectedPolygons := by decide +kernel
#print axioms full_enumeration
''')
    start = time.monotonic()
    process = subprocess.Popen(
        ['lake', 'env', 'lean', str(probe)], cwd=root / 'lean',
        start_new_session=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    try:
        output, _ = process.communicate(timeout=limit)
        print(output, end='')
        print(f'Full enumeration exit={process.returncode}, wall={time.monotonic()-start:.2f}s')
        sys.exit(process.returncode)
    except subprocess.TimeoutExpired:
        os.killpg(process.pid, signal.SIGTERM)
        output, _ = process.communicate()
        print(output, end='')
        print(f'Full enumeration timeout, wall={time.monotonic()-start:.2f}s, limit={limit:g}s')
        sys.exit(124)
