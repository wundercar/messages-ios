import Foundation
import UIKit
import WUMessages

extension ExampleMessages: ExampleMessagesProtocol {
    static func showBannerSuccess(message: WUMessage) {
        var coloredMessage = message
        coloredMessage.titleColor = .black
        coloredMessage.textColor = .black
        
        WUMessagesNotificationBanner.showBanner(
            message: coloredMessage,
            backgroundColor: .green,
            onTap: {
                print("Success Banner: Tapped")
            },
            timeout: defaultTimeout
        )
    }
    
    static func showBannerError(message: WUMessage) {
        var coloredMessage = message
        coloredMessage.titleColor = .white
        coloredMessage.textColor = .white
        
        WUMessagesNotificationBanner.showBanner(
            message: coloredMessage,
            backgroundColor: .red,
            onTap: {
                print("Error Banner: Tapped")
            },
            timeout: defaultTimeout
        )
    }
    
    static func showBannerWarning(message: WUMessage) {
        var coloredMessage = message
        coloredMessage.titleColor = .black
        coloredMessage.textColor = .black
        
        WUMessagesNotificationBanner.showBanner(
            message: coloredMessage,
            backgroundColor: .yellow,
            onTap: {
                print("Warning Banner: Tapped")
            },
            timeout: defaultTimeout
        )
    }
    
    static func showNotification(message: WUMessage, image: UIImage?) {
        WUMessagesNotificationBanner.showNotification(
            message: message,
            image: image,
            backgroundColor: .lightGray,
            onTap: {
                print("Notification: Tapped")
            }, timeout: defaultTimeout
        )
    }
    
    static func showStatusBarMessage(text: String) {
        let message = WUMessage(text: text, textColor: .black)
        WUMessagesNotificationBanner.showStatusBarMessage(
            message: message,
            backgroundColor: .lightGray,
            onTap: {
                print("Status Bar: Tapped")
            }, timeout: defaultTimeout
        )
    }
}
