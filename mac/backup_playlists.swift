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

func exportPlaylist(_ playlist: ITLibPlaylist) {
  let dictArray = playlist.items.map { track in
    [
      "title": track.title,
      "artist": track.artist?.name ?? "",
      "location": track.location!.path,
    ]
  }
  let jsonData = try! JSONSerialization.data(withJSONObject: dictArray, options: .prettyPrinted)
  let directoryUrl = URL(fileURLWithPath: FileManager.default.currentDirectoryPath, isDirectory: true)
  let outputUrl = directoryUrl.appendingPathComponent("\(playlist.name).json")
  try! jsonData.write(to: outputUrl)
}

for name in playlistNames {
  guard let playlist = getPlaylist(name: name) else {
    print("Could not find playlist \(name)")
    continue
  }
  exportPlaylist(playlist)
  print("\(playlist.name) - \(playlist.items.count)")
}
