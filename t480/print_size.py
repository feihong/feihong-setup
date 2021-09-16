import subprocess
import sys
from pathlib import Path
from secrets import folders

folders = [str(Path('~/' + f).expanduser()) for f in folders]

cmd = ['du', '-shc'] + folders
print(' '.join(cmd))
subprocess.call(cmd)
