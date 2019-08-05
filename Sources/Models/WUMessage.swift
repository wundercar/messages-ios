import Foundation
import UIKit

public struct WUMessage {
    // MARK: - Properties
    
    public var title: String?
    public var titleColor: UIColor?
    public var text: String?
    public var textColor: UIColor?
    
    // MARK: - Life Cycle
    
    public init(
        title: String? = nil,
        titleColor: UIColor? = nil,
        text: String? = nil,
        textColor: UIColor? = nil) {
        if title == nil, text == nil {
            assertionFailure("At least text or title should be defined")
        }
        self.title = title
        self.titleColor = titleColor
        self.text = text
        self.textColor = textColor
    }
}
