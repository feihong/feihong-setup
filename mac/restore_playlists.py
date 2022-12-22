import sys
import os.path
import json
from pathlib import Path
import Foundation
import ScriptingBridge

downloads_dir = Path('~/Downloads').expanduser()
playlist_files = [f for f in downloads_dir.glob('*.json') if f.name != 'tracks.json']

app = Foundation.SBApplication.applicationWithBundleIdentifier_("com.apple.Music")

def create_playlist(name):
  props = {'name': name}
  playlist = app.classForScriptingClass_("playlist").alloc().initWithProperties_(props)
  app.sources()[0].playlists().insertObject_atIndex_(playlist, 0)

# for track in playlist:
#   print(track.keys())
#   break

for playlist_file in playlist_files:
  print(playlist_file)
  locations = [item['location'] for item in json.loads(playlist_file.read_bytes())]
  for loc in locations:
    if not os.path.exists(loc):
      print(f'{loc} does not exist')
      sys.exit(1)

  create_playlist(playlist_file.stem)
