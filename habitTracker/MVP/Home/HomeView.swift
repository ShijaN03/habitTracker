import UIKit

protocol HomeViewProtocol: AnyObject {
    var presenter: HomePresenterProtocol! { get set }
}

class HomeView: UIViewController, HomeViewProtocol {
    
    var presenter: HomePresenterProtocol!
    
    private let headView = UIView()
    private let titleLabel = UILabel()
    private let headTitleShapeLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        setUpHeadView()
        setUpHeadTitle()
    }
    
    private func setUpHeadView() {
        view.addSubview(headView)
        
        headView.backgroundColor = .clear
        
        headView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headView.topAnchor.constraint(equalTo: view.topAnchor),
            headView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headView.heightAnchor.constraint(equalToConstant: 120)
        ])
        
    }
    
    private func setUpHeadTitle() {
        
        view.addSubview(titleLabel)
        
        titleLabel.text = "Habits"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 32)
        
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: headView.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: headView.centerYAnchor, constant: 30)
        ])
        
    }
}
