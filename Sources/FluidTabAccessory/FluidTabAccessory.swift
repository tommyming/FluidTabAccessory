import Foundation
import UIKit

/// This Class is mainly for UIKit use, to implement the TabAccessory for compatible iOS versions.
class FluidTabAccessory: UIView, FluidTabAccessoryInsertible {
    var navigationContent: UIViewController?
    
    let contentView: UIView
    let navigation: NavigationType
    let config: FluidTabAccessoryConfig
    
    init(contentView: UIView, navigation: NavigationType, config: FluidTabAccessoryConfig = .default) {
        self.contentView = contentView
        self.navigation = navigation
        self.config = config
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        
    }
    
    private func setupConstraints() {
        
    }
    
    //
}
