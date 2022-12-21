import os
import subprocess
import getpass
from pathlib import Path

target_ip = os.environ['TARGET_IP']
user = getpass.getuser()

json_files = Path(__file__).parent.glob('*.json')

target_dir = f'{user}@{target_ip}:/Users/{user}/Downloads'

cmd = ['scp'] + [str(f) for f in json_files] + [target_dir]

print('Command:', ' '.join(cmd))
subprocess.run(cmd)
