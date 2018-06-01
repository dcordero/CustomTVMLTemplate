import TVMLKit

class CustomInterfaceFactory: TVInterfaceFactory {

    static let templateName = "confettiTemplate"

    override func makeViewController(element: TVViewElement, existingViewController: UIViewController?) -> UIViewController? {

        guard element.name == CustomInterfaceFactory.templateName else { return nil }
        let greetingsViewController = existingViewController as? ConfettiTemplateViewController ?? ConfettiTemplateViewController()

        return greetingsViewController
    }
}
