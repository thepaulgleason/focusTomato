

import UIKit

class TableViewController: UITableViewController {
    
    var coding = activity("coding")
    var meditation = activity("meditation", focusRepMinutes: 25, shortBreakMinutes: 0, numberOfRepsInASet: 1)
    var workout = activity("workout", focusRepMinutes: 2, shortBreakMinutes: 5, numberOfRepsInASet: 10)
    var reading = activity("reading")
    var writing = activity("writing")
    
    var userSessions: [String] = ["coding", "meditation", "workout", "reading", "writing"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userSessions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = userSessions[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
        performSegue(withIdentifier: "enterSession", sender: self)
        
    }


}
