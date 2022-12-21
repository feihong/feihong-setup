// cat music.swift restore_playlists.swift | swift -
import Foundation

extension URL {
  var typeIdentifier: String? { (try? resourceValues(forKeys: [.typeIdentifierKey]))?.typeIdentifier }
}

func getPlaylistFiles() -> [URL] {
  let downloadsDir = try! FileManager.default.url(
      for: .downloadsDirectory, 
      in: .userDomainMask,
      appropriateFor: nil,
      create: false)
  let directoryContents = try! FileManager.default.contentsOfDirectory(at: downloadsDir, includingPropertiesForKeys: nil)
  return directoryContents.filter { $0.typeIdentifier == "public.json"  && $0.lastPathComponent != "tracks.json" }
}

guard let app: MusicApplication = SBApplication(bundleIdentifier: "com.apple.Music") else {
  print("Could not load Music app")
  exit(1)
}

func getMusicPlaylist() -> MusicPlaylist? {
  for case let playlist as MusicPlaylist in app.playlists!() {
    if playlist.name! == "Music" {
      return playlist
    }  
  }
  return nil
}

// let playlist = getMusicPlaylist()!
// let tracks = playlist.tracks!()

for p in getPlaylistFiles() {
  // print(p.typeIdentifier!)
  print(p.lastPathComponent)
}