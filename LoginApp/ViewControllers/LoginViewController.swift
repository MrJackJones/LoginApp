import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.text = user.username
        passwordTF.text = user.password
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func loginButton() {
        guard usernameTF.text == user.username, passwordTF.text == user.password else {
            alert(title: "Invalid Login or Password!", message: "Please, enter a valid username and password.")
            passwordTF.text = ""
            return
        }
        performSegue(withIdentifier: "openHelloVC", sender: nil)
    }
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        alert(title: "Oops!", message: "You user name is \(user.username)")
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        alert(title: "Oops!", message: "You password is \(user.password)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        
        for viewController in tabBarController.viewControllers! {
           if let helloVC = viewController as? HelloViewController {
               helloVC.usernameValue = user.person.name
           } else if let navigationVC = viewController as? UINavigationController {
               guard let aboutUserVC = navigationVC.topViewController as? AboutViewController else { return }
                   
               guard let contactVC = navigationVC.topViewController as? ContactViewController else { return }
               
               aboutUserVC.person = user.person
               contactVC.contacts = user.person.contacts
           }
       }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    private func alert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
    
}

