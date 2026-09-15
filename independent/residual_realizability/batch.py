import subprocess,sys,pathlib
H=pathlib.Path(__file__).resolve().parent
for i in range(1,4):
    with (H/('orbit_%03d.solve.log'%i)).open('w') as f:
        try:
            p=subprocess.run([sys.executable,str(H/'run.py'),str(i)],stdout=f,stderr=subprocess.STDOUT,timeout=900)
            print(i,'exit',p.returncode,flush=True)
        except subprocess.TimeoutExpired:print(i,'TIMEOUT (not refuted)',flush=True)
