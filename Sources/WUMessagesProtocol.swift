import Foundation
import UIKit

public protocol WUMessagesProtocol {
    typealias OnTap = () -> Void
    
    static func showBanner(
        message: WUMessage,
        backgroundColor: UIColor?,
        onTap: OnTap?,
        timeout: DispatchTimeInterval
    )
    
    /// Only `text` property will be used from message
    static func showStatusBarMessage(
        message: WUMessage,
        backgroundColor: UIColor?,
        onTap: OnTap?,
        timeout: DispatchTimeInterval
    )
    
    static func showNotification(
        message: WUMessage,
        image: UIImage?,
        backgroundColor: UIColor?,
        onTap: OnTap?,
        timeout: DispatchTimeInterval
    )
}
