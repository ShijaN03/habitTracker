import UIKit

protocol HomeViewProtocol: AnyObject {
    var presenter: HomePresenterProtocol! { get set }
}

class HomeView: UIViewController, HomeViewProtocol {
    var presenter: HomePresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
}
