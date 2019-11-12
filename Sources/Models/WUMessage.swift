import Foundation
import UIKit

public struct WUMessage {
    
    // MARK: - Properties
    
    public var title: String?
    public var titleColor: UIColor?
    public var text: String?
    public var textColor: UIColor?
    /// A fully custom attributed string for message title. Overrides `title` and `titleColor`.
    public var customAttributedTitle: NSAttributedString?
    /// A fully custom attributed string for message text. Overrides `text` and `textColor`.
    public var customAttributedText: NSAttributedString?
    
    // MARK: - Life Cycle
    
    public init(
        title: String? = nil,
        titleColor: UIColor? = nil,
        text: String? = nil,
        textColor: UIColor? = nil,
        customAttributedTitle: NSAttributedString? = nil,
        customAttributedText: NSAttributedString? = nil) {
        
        if title == nil, text == nil {
            assertionFailure("At least text or title should be defined")
        }
        
        self.title = title
        self.titleColor = titleColor
        self.text = text
        self.textColor = textColor
        self.customAttributedTitle = customAttributedTitle
        self.customAttributedText = customAttributedText
    }
}
