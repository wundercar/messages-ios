import Foundation
import UIKit

/// Extension to style information in WUMessage
/// through NSAttributedString
extension WUMessage {
    
    var attributedTitle: NSAttributedString {
        let result = NSAttributedString(
            text: title ?? "",
            textColor: titleColor
        )
        return result
    }
    
    var attributedText: NSAttributedString {
        let result = NSAttributedString(
            text: text ?? "",
            textColor: textColor
        )
        return result
    }
}

// MARK: - Private Utility Extension

private extension NSAttributedString {
    
    convenience init(text: String, textColor: UIColor?) {
        
        var attributes: [NSAttributedString.Key: Any] = [:]
        
        if let textColor = textColor {
            attributes[.foregroundColor] = textColor
        }
        
        self.init(
            string: text,
            attributes: attributes
        )
    }
}
