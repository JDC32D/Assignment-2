import Foundation

enum Filter: CaseIterable, CustomStringConvertible {
    
    case noRings
    case oneRing
    case fiveRings
    case sevenRings
    case thirteenRings
    case noMoons
    case oneMoon
    case twoMoons
    case fiveMoons
    case fourteenMoons
    case sixtyMoons
    case sadPlanet
    case kingOfPlanets
    
    var description: String {
        switch self {
            case .noRings: return "0 rings"
            case .oneRing: return "1 ring"
            case .fiveRings: return "5 rings"
            case .sevenRings: return "7 rings"
            case .thirteenRings: return "13 rings"
            case .noMoons: return "0 moons"
            case .oneMoon: return "1 moon"
            case .twoMoons: return "2 moons"
            case .fiveMoons: return "5 moons"
            case .fourteenMoons: return "14 moons"
            case .sixtyMoons: return "over 60"
            case .sadPlanet: return "Demoted Boi"
            case .kingOfPlanets: return "King of Planets"
        }
    }
}

struct Planet {
    var name: String
    var numMoons: Filter
    var moons = [String]()
    var position: String
    var rings: Filter
    
    init(name: String, numMoons: Filter, moons: [String], position: String, rings: Filter) {
        self.name = name
        self.numMoons = numMoons
        self.moons = moons
        self.position = position
        self.rings = rings
    }
}

var planets: [Planet] = [
    Planet(name: "Mercury", numMoons: Filter.noMoons,
           moons: ["No Moons"],
           position: "1", rings: Filter.noRings),
    Planet(name: "Venus", numMoons: Filter.noMoons,
           moons: ["No Moons"],
           position: "2", rings: Filter.noRings),
    Planet(name: "Earth", numMoons: Filter.oneMoon,
           moons: ["The Moon!"],
           position: "3", rings: Filter.noRings),
    Planet(name: "Mars", numMoons: Filter.twoMoons,
           moons: ["Phobos, Deimos"],
           position: "4", rings: Filter.noRings),
    Planet(name: "Jupiter", numMoons: Filter.sixtyMoons,
           moons:["Europa", "Ganymede", "Io", "Callisto"],
           position: "5", rings: Filter.noRings),
    Planet(name: "Saturn", numMoons: Filter.sixtyMoons,
           moons: ["Titan","Enceladus","Mimas","Iapetus","Dione","Rhea","Tethys","Phoebe","Hyperion","Pandora","Prometheus", "Janus","Pan"],
           position: "6", rings: Filter.sevenRings),
    Planet(name: "Uranus", numMoons: Filter.fiveMoons,
           moons: ["Umbriel","Titania","Miranda","Oberon","Ariel","Trinculo","Cordelia","Francisco", "Setebos", "Rosalind"],
           position: "7", rings: Filter.thirteenRings),
    Planet(name: "Neptune", numMoons: Filter.fourteenMoons,
           moons: ["Naiad", "Thalassa", "Despina", "Galatea", "Larissa"],
           position: "8", rings: Filter.fiveRings),
    Planet(name: "Sun", numMoons: Filter.kingOfPlanets,
           moons: ["No Moons"],
           position: "0", rings: Filter.kingOfPlanets),
    Planet(name: "Pluto" , numMoons: Filter.sadPlanet,
           moons: ["Charon", "Styx", "Nix", "Kerberos", "Hydra"],
           position: "9", rings: Filter.sadPlanet )
]

