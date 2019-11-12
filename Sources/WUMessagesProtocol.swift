import Foundation
import UIKit

public protocol WUMessagesProtocol {
    
    typealias OnTap = () -> Void
    
    /// Shows a notification look alike banner, including images if needed
    static func showBanner(
        message: WUMessage,
        backgroundColor: UIColor?,
        onTap: OnTap?,
        leftIcon: UIImage?,
        rightIcon: UIImage?,
        timeout: DispatchTimeInterval
    )
    
    /// Shows information over the status bar
    /// Only `text` property will be used from message
    static func showStatusBarMessage(
        message: WUMessage,
        backgroundColor: UIColor?,
        onTap: OnTap?,
        timeout: DispatchTimeInterval
    )
    
    /// Shows a notification, including image if needed
    static func showNotification(
        message: WUMessage,
        image: UIImage?,
        backgroundColor: UIColor?,
        onTap: OnTap?,
        timeout: DispatchTimeInterval
    )
}
