//
//  SecondOnboardController.swift
//  Atomic Routine
//
//  Created by Kruti Boghara on 21/03/24.
//

import UIKit

class SecondOnboardController: UIViewController {
   
   @IBOutlet weak var nextButton: UIButton!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      SetUI()
      navigationController?.navigationBar.isHidden = true
   }
   
   
   func SetUI() {
      nextButton.layer.borderColor = UIColor.gray.cgColor
      nextButton.layer.borderWidth = 3.5
      nextButton.layer.backgroundColor = UIColor(named: "Button Background")?.cgColor
      
   }
   
   @IBAction func nextButtonPressed(_ sender: UIButton) {
      var next = storyboard?.instantiateViewController(identifier: "ThirdOnboardController") as! ThirdOnboardController
      self.navigationController?.pushViewController(next, animated: true)
   }
   
}
