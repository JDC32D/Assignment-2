//
//  Model.swift
//  Assignment2
//
//  Created by Carmody, Joseph (UMSL-Student) on 12/3/18.
//  Copyright © 2018 Carmody, Joseph (UMSL-Student). All rights reserved.
//

import Foundation

struct Planet {
    var name: String
    var numMoons: String
    var moons = [String]()
    var position: String
    var rings: String
}

class PlanetModel {
    
    
    var Planets: [Planet] = [
        Planet(name: "Mercury", numMoons: "0", moons: ["No Moons"], position: "1", rings: "0"),
        Planet(name: "Venus", numMoons: "0", moons: ["No Moons"], position: "2", rings: "0"),
        Planet(name: "Earth", numMoons: "0", moons: ["The Moon!"], position: "3", rings: "0"),
        Planet(name: "Mars", numMoons: "2", moons: ["Phobos, Deimos"], position: "4", rings: "0"),
        Planet(name: "Jupiter", numMoons: "67", moons: ["Europa", "Ganymede", "Io", "Callisto"], position: "5", rings: "0"),
        Planet(name: "Saturn", numMoons: "62", moons: ["Titan","Enceladus","Mimas","Iapetus","Dione","Rhea","Tethys","Phoebe","Hyperion","Pandora","Prometheus", "Janus","Pan"], position: "6", rings: "7"),
        Planet(name: "Uranus", numMoons: "5", moons: ["Umbriel","Titania","Miranda","Oberon","Ariel","Trinculo","Cordelia","Francisco", "Setebos", "Rosalind"], position: "5", rings: "13"),
        Planet(name: "Neptune", numMoons: "14", moons: ["Naiad", "Thalassa", "Despina", "Galatea", "Larissa"], position: "5", rings: "5")
    ]
    
}
