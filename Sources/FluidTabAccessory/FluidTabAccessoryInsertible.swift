import UIKit

protocol FluidTabAccessoryInsertible {
    var contentView: UIView { get }
    var navigation: NavigationType { get }
    var navigationContent: UIViewController? { get }
}

extension FluidTabAccessoryInsertible {
    func addTabAccessory() {}

    private func addToTabControllerIfAvailable() {}
}
