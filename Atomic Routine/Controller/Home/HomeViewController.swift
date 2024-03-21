//
//  HomeViewController.swift
//  Atomic Routine
//
//  Created by Kruti Boghara on 21/03/24.
//

import UIKit

class HomeViewController: UIViewController {
   
   @IBOutlet weak var plusButton: UIButton!
   @IBOutlet weak var addNewItemStackView: UIStackView!
   @IBOutlet weak var mainCollectionView: UICollectionView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      setUI()
      
   }
   
   func setUI() {
      plusButton.layer.borderColor = UIColor(named: "Text Color")?.cgColor
      plusButton.layer.borderWidth = 2
      
      if mainCollectionView.numberOfItems(inSection: 0) == 0 {
         addNewItemStackView.isHidden = false // Show the stackView
      } else {
         addNewItemStackView.isHidden = true // Hide the stackView
      }

   }
   
   @IBAction func plusButtonPressed(_ sender: UIButton) {
      let nextToCreateHabit = storyboard?.instantiateViewController(identifier: "CreateHabitController") as! CreateHabitController
      nextToCreateHabit.modalPresentationStyle = .overFullScreen
      self.present(nextToCreateHabit, animated: true)
      
   }
   
   @IBAction func chartViewButtonPressed(_ sender: UIButton) {
   }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return 1
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      //Code here
      return UICollectionViewCell()
   }
   
   
}
