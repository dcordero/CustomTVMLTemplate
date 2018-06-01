import TVMLKit

class CustomInterfaceFactory: TVInterfaceFactory {

    static let templateName = "confettiTemplate"
    static let defaultTitle = "Default Title"

    override func makeViewController(element: TVViewElement, existingViewController: UIViewController?) -> UIViewController? {

        guard element.name == CustomInterfaceFactory.templateName else { return nil }
        let greetingsViewController = existingViewController as? ConfettiTemplateViewController ?? ConfettiTemplateViewController()

        if let attributes = element.attributes, let title = attributes["title"] {
            greetingsViewController.text = title
        } else {
            greetingsViewController.text = CustomInterfaceFactory.defaultTitle
        }

        return greetingsViewController
    }
}
