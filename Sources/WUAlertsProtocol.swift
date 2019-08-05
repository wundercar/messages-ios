import Foundation
import UIKit

public protocol WUAlertsProtocol {
    func showInformation(
        message: WUMessage,
        accept: WUMessageAction
    )
    
    func showConfirmation(
        message: WUMessage,
        accept: WUMessageAction,
        cancel: WUMessageAction
    )
    
    func showAlertTextField(
        message: WUMessage,
        fieldPlaceHolder: String?,
        fieldText: String?,
        accept: WUTextFieldMessageAction,
        cancel: WUMessageAction
    )
    
    func showActionSheet(
        message: WUMessage,
        options: [WUMessageAction],
        source: WUMessageSource
    )
}
