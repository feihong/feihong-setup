import os
import subprocess
from pathlib import Path

target_ip = os.environ['TARGET_IP']

folders = """
Books
Comics
Documents
Games
Music/tracks
Setup
Videos
"""
folders = [f for f in folders.strip().splitlines() if not f.startswith('#')]


home_dir = Path('~').expanduser()
user = str(home_dir).split('/')[-1]

source_directories = [str(home_dir / folder) for folder in folders]

cmd = [
  'rsync',
  # '--dry-run', # comment this out when you want to move the files over for real
  '-a', # archive mode; equals -rlptgoD
  '--numeric-ids', # don't map uid/gid values by user/group name
  '--progress',
  '--exclude=.DS_Store',
] + source_directories + [
  f'{user}@{target_ip}:/Users/{user}', # target directory
]

print('Command:', ' '.join(cmd))
answer = input('Proceed? [y/n] ')

if answer.strip().lower() == 'y':
  subprocess.run(cmd)
