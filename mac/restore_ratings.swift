// cat music.swift restore_ratings.swift | swift -
import Foundation

func makeRatingsMap() -> Dictionary<String, Int> {
  let downloadsDir = FileManager.default.url(
    for: .downloadsDirectory, 
    in: .userDomainMask,
    appropriateFor: nil,
    create: false)
  let inputUrl = downloadsDir.appendingPathComponent("tracks.json")
  guard let data = try? Data(contentsOf: inputUrl, options: .mappedIfSafe) else {
    print("JSON file coulnd't be read from")
    return [:]
  }
  guard let jsonResult = try? JSONSerialization.jsonObject(with: data, options: .mutableLeaves) else {
    print("Invalid JSON file")
    return [:]
  }
  guard let dictArray = jsonResult as? [Dictionary<String, Any>] else {
    print("JSON doesn't have the right format")
    return [:]
  }

  var result: [String: Int] = [:]
  for dict in dictArray {
    let key: String = dict["location"] as! String
    let value: Int = dict["rating"] as! Int
    result[key] = value
  }
  return result
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

let playlist = getMusicPlaylist()!

let tracks = playlist.tracks!()
print("Found \(tracks.count) tracks")

let ratingsMap = makeRatingsMap()

for case let track as MusicFileTrack in playlist.tracks!() {
  let path = track.location!.path
  guard let rating = ratingsMap[track.location!.path] else {
    print("Rating not found for \(path)")
    break
  }
  let realRating = rating * 20
  print("\(track.name!) \(realRating)")
  track.setRating!(realRating)
}