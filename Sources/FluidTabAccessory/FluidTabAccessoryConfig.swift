import Foundation

#if canImport(UIKit)
    import UIKit
#elseif canImport(SwiftUI)
    import SwiftUI
#endif

struct FluidTabAccessoryConfig {
    /// This is the claimed height of `UITabAccessory` from Apple Developer Docs.
    // var height: CGFloat = 44
    let height: CGFloat
    /// To keep a rounded side feel, the corner radius is set to half of the height.
    /// of course you can modify it as you wish.
    let cornerRadius: CGFloat
    // var cornerRadius: CGFloat = height / 2
    // background color of the accessoryView
    let backgroundColor: UIColor
    // The masking opacity of the background.
    let backgroundOpacity: Double
    // spaces between the accessory border and the screen edges.
    let padding: CGFloat
}

extension FluidTabAccessoryConfig {
    static let `default` = FluidTabAccessoryConfig(
        height: 44,
        cornerRadius: 22,
        backgroundColor: .clear,
        backgroundOpacity: 0.0,
        padding: 4
    )
}
