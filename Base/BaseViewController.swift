import UIKit

protocol BaseDisplayLogic: AnyObject {
}

class BaseViewController: UIViewController, BaseDisplayLogic {
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
