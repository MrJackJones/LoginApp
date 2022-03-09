import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let username = "admin"
    private let password = "admin"
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if usernameTF.text != username || passwordTF.text != password {
            alert(title: "Invalid Login or Password!", message: "Please, enter a valid username and password.")
            return
        }
        guard let helloVC = segue.destination as? HelloViewController else { return }
        helloVC.usernameValue = username
    }
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        alert(title: "Oops!", message: "You user name is \(username)")
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        alert(title: "Oops!", message: "You password is \(password)")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    private func alert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
}

