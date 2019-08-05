import Foundation
import UIKit

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

private extension NSAttributedString {
    
    convenience init(text: String, textColor: UIColor?) {
        // No color, just return the string
        guard let textColor = textColor else {
            self.init(string: text)
            return
        }
        // Include color
        self.init(
            string: text,
            attributes: [
                .foregroundColor: textColor
            ]
        )
    }
}
