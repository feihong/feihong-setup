import sys
import os.path
import json
from pathlib import Path
import Foundation
import ScriptingBridge as _ # even if you don't use it, you must still import it

downloads_dir = Path('~/Downloads').expanduser()
playlist_files = [f for f in downloads_dir.glob('*.json') if f.name != 'tracks.json']

app = Foundation.SBApplication.applicationWithBundleIdentifier_("com.apple.Music")
tracks = app.sources()[0].tracks()
playlists = app.sources()[0].playlists()

def create_playlist(name):
  props = {'name': name}
  playlist = app.classForScriptingClass_("playlist").alloc().initWithProperties_(props)
  playlists.addObject_(playlist)
  return playlist

def delete_playlist(name):
  for i, playlist in enumerate(playlists):
    if playlist.name() == name:
      playlists.removeObjectAtIndex_(i)
      return

def create_tracks_map():
  print('Building tracks map, might take a long time...')
  result = {}
  for track in tracks:
    # Must explicitly convert to string, otherwise the type is objc.pyobjc_unicode
    key = str(track.location().path())
    result[key] = track
  return result

def main():
  tracks_map = create_tracks_map()

  for playlist_file in playlist_files:
    print(playlist_file)
    name = playlist_file.stem
    locations = [item['location'] for item in json.loads(playlist_file.read_bytes())]
    # Verify that all files actually exist:
    for location in locations:
      if not os.path.exists(location):
        print(f'{location} does not exist')
        sys.exit(1)

    # delete_playlist(name)
    playlist = create_playlist(name)

    # Add all tracks to the new playlist
    for location in locations:
      track = tracks_map[location]
      track.duplicateTo_(playlist)
      print(f'Added {track.name()} to {name}')

if __name__ == '__main__':
  main()
