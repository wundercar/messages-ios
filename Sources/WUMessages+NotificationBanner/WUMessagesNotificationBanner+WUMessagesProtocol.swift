import Foundation
import NotificationBannerSwift
import UIKit

// MARK: - WUMessagesProtocol

extension WUMessagesNotificationBanner: WUMessagesProtocol {
    public static func showBanner(message: WUMessage,
                                  backgroundColor: UIColor?,
                                  onTap: OnTap?,
                                  leftIcon: UIImage? = nil,
                                  leftIconColor: UIColor? = nil,
                                  rightIcon: UIImage? = nil,
                                  rightIconColor: UIColor? = nil,
                                  timeout: DispatchTimeInterval) {
        
        // Title
        let title = message.customAttributedTitle ?? message.attributedTitle
        
        // Subtitle
        let subtitle = message.customAttributedText ?? message.attributedText
        
        // Left icon
        var leftIconView: UIImageView!
        if let leftIcon = leftIcon {
            leftIconView = UIImageView(image: leftIcon.withRenderingMode(.alwaysTemplate))
            
            if let leftIconColor = leftIconColor {
                leftIconView.tintColor = leftIconColor
            }
        }
        
        // Right icon
        var rightIconView: UIImageView!
        if let rightIcon = rightIcon {
            rightIconView = UIImageView(image: rightIcon.withRenderingMode(.alwaysTemplate))
            
            if let rightIconColor = rightIconColor {
                rightIconView.tintColor = rightIconColor
            }
        }
        
        // Banner
        let banner = NotificationBanner(
            attributedTitle: title,
            attributedSubtitle: subtitle,
            leftView: leftIconView,
            rightView: rightIconView,
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
        let title = message.customAttributedText ?? message.attributedText
        
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
        let title = message.customAttributedTitle ?? message.attributedTitle
        
        // Subtitle
        let subtitle = message.customAttributedText ?? message.attributedText
        
        // Banner
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
