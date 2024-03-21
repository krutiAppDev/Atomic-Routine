//
//  FrequencyTableControllerTableViewController.swift
//  Atomic Routine
//
//  Created by Kruti Boghara on 21/03/24.
//

import UIKit

class FrequencyTableController: UITableViewController {

   var dataArray = ["Everyday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
       self.modalPresentationStyle = .popover
   
    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return dataArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FrequencyCell", for: indexPath) as! FrequencyCell

       cell.dayName.text = dataArray[indexPath.row]

        return cell
    }

}
