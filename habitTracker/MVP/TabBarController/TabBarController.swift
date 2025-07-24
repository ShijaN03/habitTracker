import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBar()
    }
    
    private func setUpTabBar() {
        viewControllers = [
            generateVC(viewController: Builder.buildHabitsView(), title: "Habits", image: UIImage(systemName: "list.bullet") ?? UIImage()),
            generateVC(viewController: Builder.buildHomeView(), title: "Home", image: UIImage(systemName: "house") ?? UIImage()),
            generateVC(viewController: Builder.buildStatisticsView(), title: "Statistics", image: UIImage(systemName: "checkmark.circle") ?? UIImage())
            
        ]
    }
    
    private func generateVC(viewController: UIViewController?, title: String, image: UIImage) -> UIViewController {
        guard let vc = viewController else {
            assertionFailure("failed to create \(title)")
            return UIViewController()
        }
        
        vc.tabBarItem.title = title
        vc.tabBarItem.image = image
        
        let navController = UINavigationController(rootViewController: vc)
        
        return navController
    }
    
}

