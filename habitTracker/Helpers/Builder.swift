import UIKit

class Builder {
    
    static func buildHomeView() -> UIViewController {
        
        let view = HomeView()
        let presenter = HomePresenter(view: view)
        view.presenter = presenter
        
        return view
    }
}
