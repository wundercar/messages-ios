import UIKit
import WUMessages

class ViewController: UIViewController {
    // MARK: Properties
    
    // MARK: Life-cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
}

// MARK: Private Methods

private extension ViewController {
    @IBAction func btBannerSuccessTap(_ sender: UIButton) {
        let message = WUMessage(
            title: "This is the title",
            text: "This is the text"
        )
        ExampleMessages.showBannerSuccess(message: message)
    }
    
    @IBAction func btBannerErrorTap(_ sender: UIButton) {
        let message = WUMessage(
            title: "This is the title",
            text: "This is the text"
        )
        ExampleMessages.showBannerError(message: message)
    }
    
    @IBAction func btBannerWarningTap(_ sender: UIButton) {
        let message = WUMessage(
            title: "This is the title",
            text: "This is the text"
        )
        ExampleMessages.showBannerWarning(message: message)
    }
    
    @IBAction func btNotificationTap(_ sender: UIButton) {
        let message = WUMessage(
            title: "This is the title",
            text: "This is the text"
        )
        let image = UIImage(named: "AppIcon")
        ExampleMessages.showNotification(message: message, image: image)
    }
    
    @IBAction func btStatusBarTap(_ sender: UIButton) {
        let text = "This is the title"
        ExampleMessages.showStatusBarMessage(
            text: text
        )
    }
}
