

import UIKit

class TableViewController: UITableViewController {
    
    var coding = Activity("coding")
    var meditation = Activity("meditation", focusRepMinutes: 25, shortBreakMinutes: 0, numberOfRepsInASet: 1)
    var workout = Activity("workout", focusRepMinutes: 2, shortBreakMinutes: 5, numberOfRepsInASet: 10)
    var reading = Activity("reading")
    var writing = Activity("writing")
    
    var usersActivity = Activity.createArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersActivity.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = usersActivity[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enterSession" {
            let destVC = segue.destination as! ViewController
            destVC.activity = sender as? Activity
        }
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let activity = usersActivity[indexPath.row]
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
        performSegue(withIdentifier: "enterSession", sender: activity)
        
    }


}
