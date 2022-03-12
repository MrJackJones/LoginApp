import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let username = "admin"
    private let password = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.text = username
        passwordTF.text = password
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func loginButton() {
        guard usernameTF.text == username, passwordTF.text == password else {
            alert(title: "Invalid Login or Password!", message: "Please, enter a valid username and password.")
            passwordTF.text = ""
            return
        }
        performSegue(withIdentifier: "openHelloVC", sender: nil)
    }
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        alert(title: "Oops!", message: "You user name is \(username)")
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        alert(title: "Oops!", message: "You password is \(password)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let helloVC = segue.destination as? HelloViewController else { return }
        helloVC.usernameValue = username
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

