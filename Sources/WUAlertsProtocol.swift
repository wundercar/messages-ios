import Foundation
import UIKit

/// Protocol to be extended/implemented to abstract
/// UIAlertViewController
public protocol WUAlertsProtocol {
    
    /// Show an alert with just one button
    func showInformation(
        message: WUMessage,
        accept: WUMessageAction
    )
    
    /// Shows an alert with two buttons
    func showConfirmation(
        message: WUMessage,
        accept: WUMessageAction,
        cancel: WUMessageAction
    )
    
    /// Show an alert with a textfield and two buttons
    func showAlertTextField(
        message: WUMessage,
        fieldPlaceHolder: String?,
        fieldText: String?,
        accept: WUTextFieldMessageAction,
        cancel: WUMessageAction
    )
    
    /// Show an action sheet
    func showActionSheet(
        message: WUMessage,
        options: [WUMessageAction],
        source: WUMessageSource
    )
}
