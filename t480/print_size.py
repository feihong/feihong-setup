import subprocess
import sys
from pathlib import Path

folders_file = sys.argv[1]

folders = [
  str(Path('~/' + f).expanduser())
  for f in
  Path(folders_file).read_text().strip().splitlines()
]

cmd = ['du', '-shc'] + folders
print(' '.join(cmd))
subprocess.call(cmd)
