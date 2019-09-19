//
//  ViewController.swift
//  ScreamItus-IOS
//
//  Created by parrot on 2019-09-19.
//  Copyright © 2019 room1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK:  Outlets
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var daysTextBox: UITextField!
    
    // MARK: Default functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: Actions
    @IBAction func calculateButtonPressed(_ sender: Any) {
        guard let numDays = Int(daysTextBox.text!) else {
            return
        }

//        // uncomment this text when ready to do your UI tests
//        let infection:Infection = Infection()
//        let numInfected = infection.calculateTotalInfected(day:numDays)
//        resultsLabel.text = "\(numInfected) instructors infected"
        
    }
    
}

