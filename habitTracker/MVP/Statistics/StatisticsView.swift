import UIKit

protocol StatisticsViewProtocol: AnyObject {
    var presenter: StatisticsPresenterProtocol! { get set }
}

class StatisticsView: UIViewController, StatisticsViewProtocol {
    
    var presenter: StatisticsPresenterProtocol!
    private let headTitleShapeLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
    }
}
