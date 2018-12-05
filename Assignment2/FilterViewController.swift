import Foundation
import UIKit

class FilterViewController: UIViewController {
    
    var model = PlanetModel()
    var position = 0
    weak var delegate: PlanetDelegate?
    @IBOutlet weak var filterTable: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is DescriptionViewController {
            let vc = segue.destination as? DescriptionViewController
            vc?.model = model
            vc?.position = position
            vc?.delegate = delegate
        }
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
        model.filterPlanetList(index: indexPath.row)
        position = indexPath.row
        print(model.getFilteredPlanets())
        performSegue(withIdentifier: "filterSelected", sender: self)
    }
}
