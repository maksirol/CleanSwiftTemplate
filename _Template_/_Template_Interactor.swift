protocol _Template_BusinessLogic {
}

protocol _Template_DataStore {
}

class _Template_Interactor: _Template_DataStore {
    private let presenter: _Template_PresentationLogic
    
    init(presenter: _Template_PresentationLogic) {
        self.presenter = presenter
    }
}

// MARK: - BusinessLogic

extension _Template_Interactor: _Template_BusinessLogic {
}
