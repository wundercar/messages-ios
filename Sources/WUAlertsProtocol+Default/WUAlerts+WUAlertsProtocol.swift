import Foundation
import UIKit

/// Default implementation for UIViewControllers
public extension WUAlertsDefault where Self: UIViewController {
    
    func showInformation(
        message: WUMessage,
        accept: WUMessageAction = WUMessageAction.ok) {
        
        showAlertController(
            message: message,
            actions: [
                accept
            ]
        )
    }
    
    func showConfirmation(
        message: WUMessage,
        accept: WUMessageAction = WUMessageAction.ok,
        cancel: WUMessageAction = WUMessageAction.cancel) {
        
        showAlertController(
            message: message,
            actions: [
                accept,
                cancel
            ]
        )
    }
    
    func showAlertTextField(
        message: WUMessage,
        fieldPlaceHolder: String?,
        fieldText: String?,
        accept: WUTextFieldMessageAction = WUTextFieldMessageAction.ok,
        cancel: WUMessageAction = WUMessageAction.cancel) {
        
        let alertController = UIAlertController(
            title: message.title,
            message: message.text,
            preferredStyle: .alert
        )
        
        let actionAccept = WUMessageAction(
            title: accept.title,
            style: accept.style,
            handler: {
                let firstTextField = alertController.textFields?[0]
                accept.handler(firstTextField?.text)
        })
        
        alertController.addTextField { textField in
            textField.placeholder = fieldPlaceHolder
            textField.text = fieldText
        }
        
        alertController.addAction(actionAccept.alertAction)
        alertController.addAction(cancel.alertAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func showActionSheet(
        message: WUMessage,
        options: [WUMessageAction],
        source: WUMessageSource) {
        
        showAlertController(
            message: message,
            actions: options,
            style: .actionSheet,
            source: source
        )
    }
}

// MARK: - Private Methods

private extension WUAlertsDefault where Self: UIViewController {
    typealias AlertSetupHandler = ((UIAlertController) -> Void)
    
    func showAlertController(
        message: WUMessage,
        actions: [WUMessageAction],
        style: UIAlertController.Style = .alert,
        source: WUMessageSource? = nil,
        setup: AlertSetupHandler? = nil) {
        
        let alertController = UIAlertController(
            title: message.title,
            message: message.text,
            preferredStyle: style
        )
        actions.forEach { messageAction in
            alertController.addAction(messageAction.alertAction)
        }
        
        switch source {
        case .some(.view(let view, let frame)):
            alertController.popoverPresentationController?.sourceView = view
            alertController.popoverPresentationController?.sourceRect = frame
        case .some(.barButtonItem(let item)):
            alertController.popoverPresentationController?.barButtonItem = item
        default:
            break
        }
        
        setup?(alertController)
        
        self.present(alertController, animated: true, completion: nil)
    }
}
