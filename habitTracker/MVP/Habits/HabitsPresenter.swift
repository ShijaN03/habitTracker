protocol HabitsPresenterProtocol: AnyObject {
    init(view: HabitsView)
    var habits: [Habit] { get }
    func loadHabits()
}

class HabitsPresenter: HabitsPresenterProtocol {
    
    var habits: [Habit] = []
    
    func loadHabits() {
        habits = [
            Habit(title: "Анжумания", isCompleted: false),
            Habit(title: "Присидания", isCompleted: false),
            Habit(title: "Прэс", isCompleted: false)
        ]
        view?.reloadData()
    }
    
    required init(view: HabitsView) {
        self.view = view
    }
    
    weak var view: HabitsViewProtocol?
}
