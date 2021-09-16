# https://unix.stackexchange.com/questions/174674/rsync-a-list-of-directories-with-absolute-path-in-text-file
import sys
import os
import subprocess
from pathlib import Path

user = str(Path('~').expanduser()).split('/')[-1]
folders = sys.argv[1]
server = os.environ['SERVER']

cmd = [
  'rsync', '-arR', '--numeric-ids', '--progress',
  # '--dry-run',
  f'--files-from={folders}',
  '--exclude=.DS_Store',
  f'/Users/{user}',                # source directory
  f'{user}@{server}:/home/{user}', # target directory
]

print(' '.join(cmd))
subprocess.call(cmd)
