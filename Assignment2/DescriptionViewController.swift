import Foundation
import UIKit

class DescriptionViewController: UIViewController {
    var model = PlanetModel()
    var position = 0
    weak var delegate: PlanetDelegate?
    @IBOutlet weak var descriptionTable: UITableView!
    
    override func viewDidLoad() {
        print(model.getFilteredPlanets())
    }
}

extension DescriptionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.getFilteredPlanets().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "descriptionCell", for: indexPath)
        
        cell.textLabel?.text = model.getFilteredPlanet(position: indexPath.row).name
        return cell
    }
}

extension DescriptionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.recievePlanet(planet: model.getFilteredPlanet(position: indexPath.row))
        navigationController?.popToRootViewController(animated: true)
    }
}
