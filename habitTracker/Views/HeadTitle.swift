import UIKit

final class HeadTitle: UIView {
    
    private let headView = UIView()
    private let headTitleLabel = UILabel()
    private let headTitleShapeLayer = CAShapeLayer()
    
    var title: String {
        get { headTitleLabel.text ?? "" }
        set { headTitleLabel.text = newValue }
    }
}
