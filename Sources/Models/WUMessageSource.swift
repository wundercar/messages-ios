import Foundation
import UIKit

public enum WUMessageSource {
    // swiftlint:disable:next identifier_name
    case view(UIView, rect: CGRect)
    // swiftlint:disable:next identifier_name
    case barButtonItem(UIBarButtonItem)
}
