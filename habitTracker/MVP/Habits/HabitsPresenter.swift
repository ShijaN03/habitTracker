protocol HabitsPresenterProtocol: AnyObject {
    init(view: HabitsView)
}

class HabitsPresenter: HabitsPresenterProtocol {
    required init(view: HabitsView) {
        self.view = view
    }
    
    weak var view: HabitsViewProtocol?
}
