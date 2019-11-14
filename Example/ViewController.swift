import RxSwift
import UIKit
import WUMessages

class ViewController: UIViewController {
    
    // MARK: Properties
    
    private let disposeBag = DisposeBag()
    
    // MARK: Life-cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        WUMessagesNotificationBanner.trackBannerVisibility()
            .subscribe { isVisible in
                print("Banner is visible: " + isVisible.element!.description)
            }.disposed(by: disposeBag)
    }
}

// MARK: Private Methods - Messages

private extension ViewController {
    @IBAction func btBannerSuccessTap(_ sender: UIButton) {
        ExampleMessages.showBannerSuccess(
            title: "This is the title",
            text: "This is the text",
            onTap: {
                print("Success Tapped")
        })
    }
    
    @IBAction func btBannerErrorTap(_ sender: UIButton) {
        ExampleMessages.showBannerError(
            title: "This is the title",
            text: "This is the text",
            onTap: {
                print("Error Tapped")
        })
    }
    
    @IBAction func btBannerWarningTap(_ sender: UIButton) {
        ExampleMessages.showBannerWarning(
            title: "This is the title",
            text: "This is the text",
            onTap: {
                print("Warning Tapped")
        })
    }
    
    @IBAction func btNotificationTap(_ sender: UIButton) {
        let image = UIImage(named: "AppIcon")
        ExampleMessages.showNotification(
            title: "This is the title",
            text: "This is the text",
            image: image,
            onTap: {
                print("Notification Tapped")
        })
    }
    
    @IBAction func btStatusBarTap(_ sender: UIButton) {
        ExampleMessages.showStatusBarMessage(
            text: "This is the title",
            onTap: {
                print("Status Bar Tapped")
        })
    }
}

// MARK: - Alerts

extension ViewController: WUAlertsDefault {}

private extension ViewController {
    
    @IBAction func btAlertInformationTap(_ sender: UIButton) {
        let message = WUMessage(
            title: "This is the title",
            text: "This is the text"
        )
        let acceptAction = WUMessageAction(
            title: "Accept",
            style: .default,
            handler: {
                print("Accept Tap")
        })
        
        self.showInformation(message: message, accept: acceptAction)
    }
    
    @IBAction func btAlertConfirmationTap(_ sender: UIButton) {
        let message = WUMessage(
            title: "This is the title",
            text: "This is the text"
        )
        let acceptAction = WUMessageAction(
            title: "Accept",
            style: .default,
            handler: {
                print("Accept Tap")
        })
        
        let cancelAction = WUMessageAction(
            title: "Cancel",
            style: .cancel,
            handler: {
                print("Cancel Tap")
        })
        
        self.showConfirmation(
            message: message,
            accept: acceptAction,
            cancel: cancelAction
        )
    }
    
    @IBAction func btAlertTextfieldTap(_ sender: UIButton) {
        let message = WUMessage(
            title: "This is the title",
            text: "This is the text"
        )
        let acceptAction = WUTextFieldMessageAction(
            title: "Accept",
            style: .default,
            handler: { textfieldValue in
                print("Accept Tap with: '\(textfieldValue ?? "-")'")
        })
        
        let cancelAction = WUMessageAction(
            title: "Cancel",
            style: .cancel,
            handler: {
                print("Cancel Tap")
        })
        
        self.showAlertTextField(
            message: message,
            fieldPlaceHolder: "My Placeholder",
            fieldText: "Initial Value",
            accept: acceptAction,
            cancel: cancelAction
        )
    }
    
    @IBAction func btActionSheetTap(_ sender: UIButton) {
        
        let message = WUMessage(
            title: "This is the title",
            text: "This is the text"
        )
        
        let acceptAction = WUMessageAction(
            title: "Accept",
            style: .default,
            handler: {
                print("Accept Tap")
        })
        
        let deleteAction = WUMessageAction(
            title: "Delete",
            style: .destructive,
            handler: {
                print("Delete Tap")
        })
        
        let cancelAction = WUMessageAction(
            title: "Cancel",
            style: .cancel,
            handler: {
                print("Cancel Tap")
        })
        
        self.showActionSheet(
            message: message,
            options: [
                acceptAction,
                deleteAction,
                cancelAction
            ],
            source: .view(sender, rect: sender.bounds)
        )
    }
}
