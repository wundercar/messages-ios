import Foundation
import UIKit

public struct WUTextFieldMessageAction {
    // MARK: - Properties
    
    public var title: String?
    public var style: UIAlertAction.Style = .default
    public var handler: (String?) -> Void
    
    // MARK: - Life Cycle
    
    public init(
        title: String?,
        style: UIAlertAction.Style = .default,
        handler: @escaping (String?) -> Void) {
        self.title = title
        self.style = style
        self.handler = handler
    }
}

// MARK: - Public Methods

public extension WUTextFieldMessageAction {
    // swiftlint:disable:next identifier_name
    static var ok: WUTextFieldMessageAction {
        let result = WUTextFieldMessageAction(
            title: "Ok",
            style: .default,
            handler: { _ in }
        )
        return result
    }
}
