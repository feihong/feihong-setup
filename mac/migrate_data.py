# https://unix.stackexchange.com/questions/174674/rsync-a-list-of-directories-with-absolute-path-in-text-file
import subprocess
from pathlib import Path
from secrets import server

folders = """
Books
Comics
Documents
Games
Music/tracks
Setup
Videos
""".strip().splitlines()

home_dir = Path('~').expanduser()
user = str(home_dir).split('/')[-1]

source_directories = [str(home_dir / folder) for folder in folders]

cmd = [
  'rsync',
  '--dry-run', # comment this out when you want to move the files over for real
  '-arR', 
  '--numeric-ids', 
  '--progress',
  '--exclude=.DS_Store',
] + source_directories + [
  f'{user}@{server}:/Users/{user}', # target directory
]

print(' '.join(cmd))
subprocess.run(cmd)
