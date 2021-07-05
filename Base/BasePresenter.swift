protocol BasePresentationLogic: AnyObject {
}

class BasePresenter<T: BaseDisplayLogic>: BasePresentationLogic {
    weak var viewController: T?

    init(viewController: T) {
        self.viewController = viewController
    }
}
