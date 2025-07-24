protocol HomePresenterProtocol: AnyObject {
    init(view: HomeView)
}

class HomePresenter: HomePresenterProtocol {
    
    required init(view: HomeView) {
        self.view = view
    }
    
    weak var view: HomeViewProtocol?
}
