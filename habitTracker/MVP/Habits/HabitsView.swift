import UIKit

protocol HabitsViewProtocol: AnyObject {
    var presenter: HabitsPresenterProtocol! { get set }
    func reloadData()
}

class HabitsView: UIViewController, HabitsViewProtocol {
    
    var presenter: HabitsPresenterProtocol!
    
    private let tableView = UITableView()
    private let headView = UIView()
    private let headTitleLabel = UILabel()
    private let headTitleShapeLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        setUpHeadView()
        setUpHeadTitle()
        setUpTableView()
        presenter.loadHabits()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setUpHeadTitleShapeLayer()
    }
    
    func reloadData() {
        tableView.reloadData()
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
        
        view.addSubview(headTitleLabel)
        
        headTitleLabel.text = "Habits"
        headTitleLabel.textColor = .white
        headTitleLabel.font = UIFont.systemFont(ofSize: 32)
        
        
        headTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headTitleLabel.centerXAnchor.constraint(equalTo: headView.centerXAnchor),
            headTitleLabel.centerYAnchor.constraint(equalTo: headView.centerYAnchor, constant: 30)
        ])
        
    }
    
    private func setUpHeadTitleShapeLayer() {
        
        let bezierPath = UIBezierPath(roundedRect: CGRect(center: CGPoint(x: Double(headTitleLabel.frame.midX), y: Double(headTitleLabel.frame.midY)), size: headTitleLabel.frame.insetBy(dx: -18, dy: -6).size), cornerRadius: 40)
        
        headTitleShapeLayer.path = bezierPath.cgPath
        headTitleShapeLayer.fillColor = UIColor.black.cgColor
        
        view.layer.insertSublayer(headTitleShapeLayer, below: headTitleLabel.layer)
        
    }
    
    private func setUpTableView() {
        
        view.addSubview(tableView)
        
        tableView.backgroundColor = .clear
        
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: headView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
}
