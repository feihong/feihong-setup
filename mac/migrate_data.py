# https://unix.stackexchange.com/questions/174674/rsync-a-list-of-directories-with-absolute-path-in-text-file
import subprocess
from pathlib import Path
from secrets import server

folders = """
Books
Comics
Documents
Games
Music/music
Setup
Videos
""".strip().splitlines()


user = str(Path('~').expanduser()).split('/')[-1]

files_from_file = 'files-from.txt'
Path(files_from_file).write_text('\n'.join(folders))

cmd = [
  'rsync', '-arR', '--numeric-ids', '--progress',
  '--dry-run', # comment this out when you want to move the files over for real
  f'--files-from={files_from_file}',
  '--exclude=.DS_Store',
  f'/Users/{user}',                 # source directory
  f'{user}@{server}:/Users/{user}', # target directory
]

print(' '.join(cmd))
subprocess.run(cmd)
