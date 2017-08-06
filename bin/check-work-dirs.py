#!/usr/bin/env python3
"""
List directories in ~/work that have uncommitted changes.

"""
import os
import subprocess
from pathlib import Path

work_dir = Path.home() / 'work'

for dir_ in work_dir.iterdir():
    if dir_.is_dir():
        os.chdir(dir_)
        if (dir_ / '.git').exists():
            result = subprocess.check_output('git status', shell=True).decode('utf-8')
            if 'nothing to commit, working directory clean' not in result:
                print('{} contains uncommitted changes'.format(dir_))
        else:
            print('{} is not a git repository'.format(dir_))
