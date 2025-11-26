import UIKit

/// This protocol aims to provide requirement for `FluidTabAccessory`.
/// If you would like to build your own Tab Accessory, please use this protocol for easier handling.
protocol FluidTabAccessoryInsertible: UIView {
    var contentView: UIView { get }
    var navigation: NavigationType { get }
    var navigationContent: UIViewController? { get }
    var config: FluidTabAccessoryConfig { get }
}

extension FluidTabAccessoryInsertible {
    func insertToTabViewController(_ controller: UITabBarController) {
        if #available(iOS 26, *) {
            controller.bottomAccessory = UITabAccessory(contentView: self)
        } else {
            controller.view.addSubview(self)
            
            NSLayoutConstraint.activate([
                bottomAnchor.constraint(equalTo: controller.tabBar.topAnchor, constant: 12),
                leadingAnchor.constraint(equalTo: controller.view.leadingAnchor, constant: 8),
                trailingAnchor.constraint(equalTo: controller.view.trailingAnchor, constant: -8)
            ])
        }
    }
}
