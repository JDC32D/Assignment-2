import Foundation
import UIKit

class FilterViewController: UIViewController {
    
    var planetList: [Planet] = []
    weak var delegate: PlanetDelegate?
    @IBOutlet weak var filterTable: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is DescriptionViewController {
            let vc = segue.destination as? DescriptionViewController
            vc?.planetList = planetList
            vc?.delegate = delegate
        }
    }
    
    func showFilters(index filter: Int) {
        if filter < 5 {
            planetList = Planets.filter { $0.rings == Filter.allCases[filter] }
        } else {
            planetList = Planets.filter { $0.numMoons == Filter.allCases[filter] }
        }
        print(planetList)
    }
    
}

extension FilterViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Filter.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "filterCell", for: indexPath)
        
        cell.textLabel?.text = Filter.allCases[indexPath.row].description
        return cell
    }
}

extension FilterViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showFilters(index: indexPath.row)
        performSegue(withIdentifier: "filterSelected", sender: self)
    }
}
