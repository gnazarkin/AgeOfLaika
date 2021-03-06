//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Gleb Nazarkin on 2014-12-11.
//  Copyright (c) 2014 Addo Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYears(sender: AnyObject) {
        dogYearsLabel.hidden = false
        let yearsFromTextField = humanYearsTextField.text.toInt()!
        dogYearsLabel.text = "\(yearsFromTextField * 7)" + " in dog years"
        humanYearsTextField.resignFirstResponder()
    }

    @IBAction func converToRealDogYearsPressed(sender: AnyObject) {
        let stringFromTextField = humanYearsTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5*2) + (doubleFromTextField-2)*4
        }
        else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        dogYearsLabel.text = "\(realDogYears)" + " Real Human Years"
        
    }
}

