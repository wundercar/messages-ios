import Foundation
import NotificationBannerSwift
import UIKit

extension WUMessagesNotificationBanner: WUMessagesProtocol {
    
    public static func showBanner(
        message: WUMessage,
        backgroundColor: UIColor?,
        onTap: OnTap?,
        timeout: DispatchTimeInterval) {
        
        // Title
        let title = message.attributedTitle
        
        // Subtitle
        let subtitle = message.attributedText
        
        // Banner
        let banner = NotificationBanner(
            attributedTitle: title,
            attributedSubtitle: subtitle,
            leftView: nil,
            rightView: nil,
            style: .info, // Can't be custom, to use background color afterwards
            colors: nil
        )
        
        // Background Color
        banner.backgroundColor = backgroundColor ?? .white
        
        // Timeout
        if let timeoutValue = timeout.double {
            banner.duration = timeoutValue
        }
        
        // Actions
        banner.onTap = {
            onTap?()
        }
        
        // Display
        banner.show()
    }
    
    public static func showStatusBarMessage(
        message: WUMessage,
        backgroundColor: UIColor?,
        onTap: OnTap?,
        timeout: DispatchTimeInterval) {
        
        guard message.text != nil else {
            return
        }
        
        // Title
        let title = message.attributedTitle
        
        // Banner
        let banner = StatusBarNotificationBanner(
            attributedTitle: title,
            style: .info, // Can't be custom, to use background color afterwards
            colors: nil
        )
        
        // Background Color
        banner.backgroundColor = backgroundColor ?? .white
        
        // Timeout
        if let timeoutValue = timeout.double {
            banner.duration = timeoutValue
        }
        
        // Actions
        banner.onTap = {
            onTap?()
        }
        
        // Display
        banner.show()
    }
    
    public static func showNotification(
        message: WUMessage,
        image: UIImage?,
        backgroundColor: UIColor?,
        onTap: OnTap?,
        timeout: DispatchTimeInterval) {
        
        // Title
        let title = message.attributedTitle
        
        // Subtitle
        let subtitle = message.attributedText
        
        let banner = NotificationBanner(
            attributedTitle: title,
            attributedSubtitle: subtitle,
            leftView: UIImageView(image: image),
            rightView: nil,
            style: .info, // Can't be custom, to use background color afterwards
            colors: nil
        )
        
        // Background Color
        banner.backgroundColor = backgroundColor ?? .white
        
        // Timeout
        if let timeoutValue = timeout.double {
            banner.duration = timeoutValue
        }
        
        // Actions
        banner.onTap = {
            onTap?()
        }
        
        // Display
        banner.show()
    }
}
