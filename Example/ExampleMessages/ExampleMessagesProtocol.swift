import Foundation
import UIKit

protocol ExampleMessagesProtocol {
    
    typealias OnTap = () -> Void
    
    // Banner
    static func showBannerSuccess(title: String?, text: String?, onTap: OnTap?)
    static func showBannerError(title: String?, text: String?, onTap: OnTap?)
    static func showBannerWarning(title: String?, text: String?, onTap: OnTap?)
    // Notification
    static func showNotification(title: String?, text: String?, image: UIImage?, onTap: OnTap?)
    // Status Bar Message
    static func showStatusBarMessage(text: String, onTap: OnTap?)
}
