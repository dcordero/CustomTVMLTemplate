import UIKit

class ConfettiTemplateViewController: UIViewController {

    var text: String?

    private var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let confettiView = SAConfettiView(frame: self.view.bounds)
        view.addSubview(confettiView)
        confettiView.startConfetti()

        label = UILabel()
        view.addSubview(label)
        label.text = text

        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
