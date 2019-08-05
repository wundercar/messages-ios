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
        let message = WUMessage(
            title: "This is the title",
            text: "This is the text"
        )
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
