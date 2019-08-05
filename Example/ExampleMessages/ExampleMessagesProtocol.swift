import Foundation
import UIKit
import WUMessages

protocol ExampleMessagesProtocol {
    // Banner
    static func showBannerSuccess(message: WUMessage)
    static func showBannerError(message: WUMessage)
    static func showBannerWarning(message: WUMessage)
    // Notification
    static func showNotification(message: WUMessage, image: UIImage?)
    // Status Bar Message
    static func showStatusBarMessage(text: String)
}
