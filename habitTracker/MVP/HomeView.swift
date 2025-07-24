import UIKit

protocol HomeViewProtocol: AnyObject {
    
}

class HomeView: UIViewController, HomeViewProtocol {
    var presenter: HomePresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
}
