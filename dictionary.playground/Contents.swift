let cities = ["Shanghai": 24_256_800, "Karachi": 23_500_000, "Beijing":21_516_000,
              "Seol":9_995_000]

let massiveCities = cities.filter{ $0.value > 10_000_000 }
print(massiveCities)

let populations = cities.map { $0.value * 2 }
print(populations)

let roundedCities = cities.mapValues{ "\($0 / 1_000_000) million people" }
print(roundedCities)

let groupedCities = Dictionary(grouping: cities.keys) { $0.characters.count }
print(groupedCities)

let person = ["name": "Taylor", "city": "Nashville"]
let name = person["name", default: "Anonymous"]

var favoriteTVShows = ["Red Dwarf", "Blackadder", "Fawlty Towers", "Red Dwarf"]
var favoriteCounts = [String: Int]()

for show in favoriteTVShows {
    favoriteCounts[show, default: 0] += 1
}

print(favoriteCounts)

