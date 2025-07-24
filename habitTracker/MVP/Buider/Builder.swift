import UIKit

class Builder {
    
    static func buildHomeView() -> UIViewController {
        
        let view = HomeView()
        let presenter = HomePresenter(view: view)
        view.presenter = presenter
        
        return view
    }
    
    static func buildHabitsView() -> UIViewController {
        
        let view = HabitsView()
        let presenter = HabitsPresenter(view: view)
        view.presenter = presenter
        
        return view
    }
    
    static func buildStatisticsView() -> UIViewController {
        
        let view = StatisticsView()
        let presenter = StatisticsPresenter(view: view)
        view.presenter = presenter
        
        return view
    }
    
    
}
