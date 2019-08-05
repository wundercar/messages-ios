import Foundation
import UIKit

public struct WUMessageAction {
    // MARK: - Properties
    
    public typealias WUMessageHandler = () -> Void
    public var title: String?
    public var style: UIAlertAction.Style = .default
    public var handler: WUMessageHandler
    
    // MARK: - Life Cycle
    
    public init(
        title: String?,
        style: UIAlertAction.Style = .default,
        handler: @escaping WUMessageHandler = {}) {
        self.title = title
        self.style = style
        self.handler = handler
    }
}

// MARK: - Public Methods

public extension WUMessageAction {
    var alertAction: UIAlertAction {
        return UIAlertAction(
            title: self.title,
            style: self.style,
            handler: { _ in
                self.handler()
        })
    }
    
    // swiftlint:disable:next identifier_name
    static var ok: WUMessageAction {
        return WUMessageAction(title: "Ok", style: .default, handler: {})
    }
    
    static var cancel: WUMessageAction {
        return WUMessageAction(title: "Cancel", style: .cancel, handler: {})
    }
}
