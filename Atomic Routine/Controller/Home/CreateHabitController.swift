//
//  CreateHabitController.swift
//  Atomic Routine
//
//  Created by Kruti Boghara on 21/03/24.
//

import UIKit

class CreateHabitController: UIViewController {
   
   @IBOutlet weak var doneButton: UIButton!
   @IBOutlet weak var nameField: UITextField!
   @IBOutlet weak var questionField: UITextField!
   @IBOutlet weak var frequencyField: UITextField!
   @IBOutlet weak var reminderField: UITextField!
   @IBOutlet weak var frequencyButton: UIButton!
   @IBOutlet weak var reminderSwitch: UISwitch!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      setUI()
      
   }
   
   func setUI() {
      nameField.layer.borderColor = UIColor.darkGray.cgColor
      nameField.layer.borderWidth = 2
      nameField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: nameField.frame.height))
      nameField.leftViewMode = .always
      
      questionField.layer.borderColor = UIColor.darkGray.cgColor
      questionField.layer.borderWidth = 2
      questionField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: questionField.frame.height))
      questionField.leftViewMode = .always
      
      frequencyField.layer.borderColor = UIColor.darkGray.cgColor
      frequencyField.layer.borderWidth = 2
      frequencyField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: frequencyField.frame.height))
      frequencyField.leftViewMode = .always
      
      reminderField.layer.borderColor = UIColor.darkGray.cgColor
      reminderField.layer.borderWidth = 2
      reminderField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: reminderField.frame.height))
      reminderField.leftViewMode = .always
     
   }
   
   @IBAction func doneButtonPressed(_ sender: UIButton) {
      self.dismiss(animated: true)
   }
   
   @IBAction func frequencyButtonPressed(_ sender: UIButton) {
   
      let menu = UIMenu(title: "", children: [
      
         UIAction(title: "Everyday", handler: { (_) in
            self.frequencyField.text = "Everyday"
         }),
         UIAction(title: "Monday", handler: { (_) in
            self.frequencyField.text = "Monday"
         }),
         UIAction(title: "Tuesday", handler: { (_) in
            self.frequencyField.text = "Tuesday"
         }),
         UIAction(title: "Wednesday", handler: { (_) in
            self.frequencyField.text = "Wednesday"
         }),
         UIAction(title: "Thursday", handler: { (_) in
            self.frequencyField.text = "Thursday"
         }),
         UIAction(title: "Friday", handler: { (_) in
            self.frequencyField.text = "Friday"
         }),
         UIAction(title: "Saturday", handler: { (_) in
            self.frequencyField.text = "Saturday"
         }),
         UIAction(title: "Sunday", handler: { (_) in
            self.frequencyField.text = "Sunday"
         })
      ])
      
      self.frequencyButton.menu = menu
      self.frequencyButton.showsMenuAsPrimaryAction = true
   }
   
   @IBAction func switchPressed(_ sender: UISwitch) {
      
      if reminderSwitch.isOn {
         reminderField.text = "On"
      } else {
         reminderField.text = "Off"
      }
   }
}
