import UIKit

protocol HabitsViewProtocol: AnyObject {
    var presenter: HabitsPresenterProtocol! { get set }
}

class HabitsView: UIViewController, HabitsViewProtocol {
    
    var presenter: HabitsPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
    }
}
