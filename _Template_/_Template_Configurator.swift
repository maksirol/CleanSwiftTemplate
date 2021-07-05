import UIKit

class _Template_Configurator: NSObject {
    
    private static func configure(
        _ viewController: _Template_ViewController,
        resolver: DepenedencyResolvable) {
        
        let presenter = _Template_Presenter<_Template_ViewController>(
            viewController: viewController)
        let interactor = _Template_Interactor(
            presenter: presenter)
        let router = _Template_Router(
            viewController: viewController,
            dataStore: interactor)
        viewController.interactor = interactor
        viewController.router = router
    }
}
