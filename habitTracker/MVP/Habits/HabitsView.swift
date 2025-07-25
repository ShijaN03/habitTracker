import UIKit

protocol HabitsViewProtocol: AnyObject {
    var presenter: HabitsPresenterProtocol! { get set }
    func reloadData()
}

class HabitsView: UIViewController, HabitsViewProtocol {
    
    var presenter: HabitsPresenterProtocol!
    
    private let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        presenter.loadHabits()
        setUpTableView()
    }
    
    func reloadData() {
        tableView.reloadData()
    }
    
    private func setUpTableView() {
        
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
}
