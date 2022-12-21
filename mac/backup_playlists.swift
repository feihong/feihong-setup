import Foundation
import iTunesLibrary

let playlistNames = """
2022 Best Song Candidates
Best of 2019
Best of 2020
Best of 2021
Best of 2022
English to Chinese Translation
Grand Lyrics Project
Story Songs
"""
.trimmingCharacters(in: .whitespacesAndNewlines)
.split(whereSeparator: \.isNewline)
.map { String($0) } // convert subsequences to strings

guard let library = try? ITLibrary(apiVersion: "1.1") else {
  print("Cannot load ITLibrary")
  exit(1)
}

func getPlaylist(name: String) -> ITLibPlaylist? {
  for playlist in library.allPlaylists {
    if playlist.name == name {
      return playlist
    }
  }
  return nil

}

for playlistName in playlistNames {
  guard let playlist = getPlaylist(name: playlistName) else {
    print("Could not find playlist \(playlistName)")
    continue
  }
  print("\(playlist.name) - \(playlist.items.count)")
}
