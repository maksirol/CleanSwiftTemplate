import UIKit

protocol _Template_DisplayLogic: BaseDisplayLogic {
}

class _Template_ViewController: BaseViewController {
    var interactor: _Template_BusinessLogic?
    var router: (NSObjectProtocol & _Template_RoutingLogic & _Template_DataPassing)?
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - _Template_DisplayLogic

extension _Template_ViewController: _Template_DisplayLogic {
}
