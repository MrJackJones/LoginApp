import UIKit

class HelloViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!
    
    var usernameValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "Hello, I am \(usernameValue)"
    }

}
