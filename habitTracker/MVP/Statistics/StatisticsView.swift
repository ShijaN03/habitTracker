import UIKit

protocol StatisticsViewProtocol: AnyObject {
    var presenter: StatisticsPresenterProtocol! { get set }
}

class StatisticsView: UIViewController, StatisticsViewProtocol {
    
    var presenter: StatisticsPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
    }
}
