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

func getLibrary(app: MusicApplication) -> MusicSource? {
  for case let source as MusicSource in app.sources!() {
    if source.name! == "Library" {
      return source
    }
  }
  return nil
}

guard let app: MusicApplication = SBApplication(bundleIdentifier: "com.apple.Music") else {
  print("Could not load Music app")
  exit(1)
}

guard let library = getLibrary(app: app) else {
  print("Could not access Library")
  exit(1)
}

func addPlaylist(name: String) {
  let sbApp = app as! SBApplication
  guard let class_ = sbApp.`class`(forScriptingClass:"playlist") as? NSObject.Type else {
    print("Could not get playlist class")
    exit(1)
  }
  let playlist = class_.init()
  // this never succeeds:
  guard let playlist = playlist as? MusicPlaylist else {
    print("Could not cast playlist as MusicPlaylist")
    exit(1)
  }
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