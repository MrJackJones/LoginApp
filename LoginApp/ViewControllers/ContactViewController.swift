import UIKit

class ContactViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var contactTableView: UITableView!
    
    var contacts: [Contact]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "TableViewCell")
        contactTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",
                                                 for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].type
        return cell
    }

}
