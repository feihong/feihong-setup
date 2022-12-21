/*
Extract track metadata of all music tracks to tracks.json
This script is much, much faster than the Python equivalent that uses PyObjC.
Links:
https://developer.apple.com/documentation/ituneslibrary
https://developer.apple.com/documentation/ituneslibrary/itlibmediaitem
*/
import Foundation
import iTunesLibrary

guard let library = try? ITLibrary(apiVersion: "1.1") else {
  print("Cannot load ITLibrary")
  exit(1)
}

let playlists = library.allPlaylists

func getPlaylist(by: (ITLibPlaylist) -> Bool) -> ITLibPlaylist? {
  for playlist in playlists {
    if by(playlist) {
      return playlist
    }
  }
  return nil
}

let playlist = CommandLine.arguments.count <= 1
  ? getPlaylist(by: {$0.distinguishedKind == .kindMusic})
  : getPlaylist(by: {$0.name == CommandLine.arguments[1]})

guard let playlist = playlist else {
  print("Failed to access music playlist")
  exit(1)
}

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"

extension Date {
  func getFormattedDate(formatter: DateFormatter) -> String {
    return formatter.string(from: self)
  }
}

let dictArray = playlist.items.map { track in
  [
    "title": track.title,
    "artist": track.artist?.name ?? "",
    "album": track.album.title ?? "",
    "rating": track.rating / 20,  // 0-5
    "genre": track.genre,
    "comments": track.comments ?? "",
    "location": track.location!.path,
  ]
}

let jsonData = try! JSONSerialization.data(withJSONObject: dictArray, options: .prettyPrinted)

let directoryUrl = URL(fileURLWithPath: FileManager.default.currentDirectoryPath, isDirectory: true)
let outputUrl = directoryUrl.appendingPathComponent("tracks.json")

try! jsonData.write(to: outputUrl)
