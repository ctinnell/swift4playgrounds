import UIKit

struct Crew {
    var name: String
    var rank: String
}

struct Starship {
    var name: String
    var maxWarp: Double
    var captain: Crew
    
    func goToMaximumWarp() {
        print("\(name) is now travelling at warp \(maxWarp)")
    }
}

let janeway = Crew(name: "Kathryn Janeway", rank: "Captain")
let voyager = Starship(name: "Voyager", maxWarp: 9.975, captain: janeway)

let enterWarp = voyager.goToMaximumWarp

enterWarp()

let nameKeyPath = \Starship.name
let maxWarpKeyPath = \Starship.maxWarp
let captainName = \Starship.name

let starshipName = voyager[keyPath: nameKeyPath]
let starshipMaxWarp = voyager[keyPath: maxWarpKeyPath]
let starshipCaptain = voyager[keyPath: captainName]
