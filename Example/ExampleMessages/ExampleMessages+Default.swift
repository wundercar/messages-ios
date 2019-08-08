import Foundation
import UIKit
import WUMessages

/// Implementation of the project specific protocol for messages
extension ExampleMessages: ExampleMessagesProtocol {
    
    static func showBannerSuccess(
        title: String?,
        text: String?,
        onTap: OnTap? = nil) {
        
        let message = WUMessage(
            title: title,
            titleColor: .black,
            text: text,
            textColor: .black)
        
        WUMessagesNotificationBanner.showBanner(
            message: message,
            backgroundColor: .green,
            onTap: {
                onTap?()
            },
            timeout: defaultTimeout
        )
    }
    
    static func showBannerError(
        title: String?,
        text: String?,
        onTap: OnTap? = nil) {
        let message = WUMessage(
            title: title,
            titleColor: .white,
            text: text,
            textColor: .white
        )
        
        WUMessagesNotificationBanner.showBanner(
            message: message,
            backgroundColor: .red,
            onTap: {
                onTap?()
            },
            timeout: defaultTimeout
        )
    }
    
    static func showBannerWarning(
        title: String?,
        text: String?,
        onTap: OnTap? = nil) {
        let message = WUMessage(
            title: title,
            titleColor: .black,
            text: text,
            textColor: .black
        )
        
        WUMessagesNotificationBanner.showBanner(
            message: message,
            backgroundColor: .yellow,
            onTap: {
                onTap?()
            },
            timeout: defaultTimeout
        )
    }
    
    static func showNotification(
        title: String?,
        text: String?,
        image: UIImage?,
        onTap: OnTap?) {
        
        let message = WUMessage(
            title: title,
            titleColor: .white,
            text: text,
            textColor: .white
        )
        
        WUMessagesNotificationBanner.showNotification(
            message: message,
            image: image,
            backgroundColor: .lightGray,
            onTap: {
                onTap?()
            },
            timeout: defaultTimeout
        )
    }
    
    static func showStatusBarMessage(text: String, onTap: OnTap?) {
        
        let message = WUMessage(
            text: text,
            textColor: .black
        )
        
        WUMessagesNotificationBanner.showStatusBarMessage(
            message: message,
            backgroundColor: .lightGray,
            onTap: {
                onTap?()
            },
            timeout: defaultTimeout
        )
    }
}
