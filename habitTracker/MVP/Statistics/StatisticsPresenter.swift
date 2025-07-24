protocol StatisticsPresenterProtocol: AnyObject {
    init(view: StatisticsView)
}

class StatisticsPresenter: StatisticsPresenterProtocol {
    required init(view: StatisticsView) {
        self.view = view
    }
    
    weak var view: StatisticsViewProtocol?
}
