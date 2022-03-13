import UIKit

class AboutViewController: UIViewController {
    var person: Person!
    
    @IBOutlet var personAgeLabel: UILabel!
    
    @IBOutlet var universityName: UILabel!
    @IBOutlet var speciality: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = person.name
        universityName.text = person.education.universityName
        speciality.text = person.education.speciality
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactViewController else { return }
        contactVC.contacts = person.contacts
    }
}
