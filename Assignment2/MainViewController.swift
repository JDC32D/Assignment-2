//
//  MainViewController.swift
//  Assignment2
//
//  Created by Carmody, Joseph (UMSL-Student) on 12/3/18.
//  Copyright © 2018 Carmody, Joseph (UMSL-Student). All rights reserved.
//

import Foundation
import UIKit


class MainViewController: UIViewController, PlanetDelegate {
   
    func recievePlanet(planet: Planet) {
        planetLabel.text = planet.name
        numMoonLabel.text = planet.numMoons.description
        positionLabel.text = planet.position
        ringsLabel.text = planet.rings.description
    }
    
    
    @IBOutlet weak var planetLabel: UILabel!
    @IBOutlet weak var numMoonLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var ringsLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is FilterViewController
        {
            let vc = segue.destination as? FilterViewController
            vc?.delegate = self
        }
    }
    
    @IBAction func selectPlanet(_ sender: Any) {
        //performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
}

protocol PlanetDelegate: class {
    func recievePlanet(planet: Planet)
}
    

