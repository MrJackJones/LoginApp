import UIKit

class ContactViewController: UIViewController  {
    var contacts: [Contact]!
    
    @IBOutlet weak var contactTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        contactTableView.dataSource = self
    }
}

extension ContactViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactViewCell", for: indexPath) as! ContactTableViewCell
        let contact = contacts[indexPath.row]
        
        cell.contactNameLabel?.text = contact.name
        cell.contactValueLabel?.text = contact.value
        
        return cell
    }
}
