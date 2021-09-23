import UIKit

protocol _Template_NavigationLogic {
//    func navigateTo_Destination_()
}

///This should be used only for data passing and it's called automatically. It just need to have strict name convention:  routeTo**segue.identifier**.
@objc protocol _Template_RoutingLogic {
//    func routeTo_Destination_(segue: UIStoryboardSegue?)
}

protocol _Template_DataPassing {
    var dataStore: _Template_DataStore { get }
}

class _Template_Router: NSObject, _Template_RoutingLogic, _Template_DataPassing {
    
    private weak var viewController: _Template_ViewController?
    let dataStore: _Template_DataStore
    
    init(viewController: _Template_ViewController,
         dataStore: _Template_DataStore) {
        
        self.viewController = viewController
        self.dataStore = dataStore
    }
    
    // MARK: Routing
    
//    func routeTo_Destination_(
//        segue: UIStoryboardSegue?) {
//        guard let segue = segue else {
//            return
//        }
//
//        let destinationVC = segue.destination as! _Destination_ViewController
//        var destinationDS = destinationVC.router!.dataStore
//        passDataTo_Destination_(source: dataStore, destination: &destinationDS)
//    }
    
    // MARK: Passing data
    
//    private func passDataTo_Destination_(
//        source: _Template_DataStore,
//        destination: inout _Destination_DataStore) {
//    }
}

// MARK: - Navigation

extension _Template_Router: _Template_NavigationLogic {
    //    func navigateTo_Destination_() {
    //        viewController?.performSegue(
    //            withIdentifier: "_Destination_",
    //            sender: viewController)
    //    }
}

extension _Template_ViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
}
