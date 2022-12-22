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

func makeTracksMap(_ tracks: SBElementArray) -> [String: MusicFileTrack] {
  var result: [String: MusicFileTrack] = [:]
  for case let track as MusicFileTrack in tracks {
    let key = track.location!.path
    result[key] = track
  }
  return result
} 

guard let app: MusicApplication = SBApplication(bundleIdentifier: "com.apple.Music") else {
  print("Could not load Music app")
  exit(1)
}

guard let library = getLibrary() else {
  print("Could not access Library")
  exit(1)
}

func getLibrary() -> MusicSource? {
  for case let source as MusicSource in app.sources!() {
    if source.name! == "Library" {
      return source
    }
  }
  return nil
}

func addPlaylist(name: String) {
  // totally stuck here
  // let thing = app.class("forScriptingClass:")
}


// func getMusicPlaylist() -> MusicPlaylist? {
//   for case let playlist as MusicPlaylist in app.playlists!() {
//     if playlist.name! == "Music" {
//       return playlist
//     }  
//   }
//   return nil
// }

// let playlist = getMusicPlaylist()!
// let tracks = playlist.tracks!()

// let tracksMap = makeTracksMap(tracks)

for p in getPlaylistFiles() {
  addPlaylist(name: p.lastPathComponent)
}