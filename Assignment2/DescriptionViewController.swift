import Foundation
import UIKit

class DescriptionViewController: UIViewController {
    var planetList: [Planet] = []
    weak var delegate: PlanetDelegate?
    @IBOutlet weak var descriptionTable: UITableView!
    
    
}

