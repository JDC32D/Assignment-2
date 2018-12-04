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
    
}
