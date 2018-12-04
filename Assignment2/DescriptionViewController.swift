import Foundation
import UIKit

class DescriptionViewController: UIViewController {
    var planetList: [Planet] = []
    weak var delegate: PlanetDelegate?
    @IBOutlet weak var descriptionTable: UITableView!
    
    override func viewDidLoad() {
//        super.viewDidLoad()
//        descriptionTable.dataSource = self
//        descriptionTable.delegate = self
        print(planetList)
    }
}

extension DescriptionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planetList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "descriptionCell", for: indexPath)
        
        cell.textLabel?.text = planetList[indexPath.row].name
        return cell
    }
}

extension DescriptionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.recievePlanet(planet: planetList[indexPath.row])
        navigationController?.popToRootViewController(animated: true)
    }
}
