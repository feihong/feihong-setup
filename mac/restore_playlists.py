import sys
import os.path
import json
from pathlib import Path
import Foundation
import ScriptingBridge

downloads_dir = Path('~/Downloads').expanduser()
playlist_files = [f for f in downloads_dir.glob('*.json') if f.name != 'tracks.json']

app = Foundation.SBApplication.applicationWithBundleIdentifier_("com.apple.Music")
tracks = app.sources()[0].tracks()

def create_playlist(name):
  props = {'name': name}
  playlist = app.classForScriptingClass_("playlist").alloc().initWithProperties_(props)
  return app.sources()[0].playlists().addObject_(playlist)

def get_track(location):
  for track in tracks:
    if track.location().path() == location:
      return track
  
  return None

# tracks = app.sources()[0].tracks()
# for track in tracks:
#   print(track.location().path())

for playlist_file in playlist_files:
  print(playlist_file)
  name = playlist_file.stem
  locations = [item['location'] for item in json.loads(playlist_file.read_bytes())]
  for location in locations:
    if not os.path.exists(location):
      print(f'{location} does not exist')
      sys.exit(1)

  playlist = create_playlist(name)

  for i, track in enumerate(app.sources()[0].tracks()):
    print(track.name())
    # not working
    track.duplicateTo_(playlist)
    if i > 10:
      break

  # for location in locations:
  #   print(f'Adding {track.name()} to {name}')
  #   track = get_track(location)
  #   if track is not None:
  #     track.duplicateTo_(playlist)
      
