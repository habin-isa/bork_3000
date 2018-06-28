//
//  ViewController.swift
//  Persist Data Example
//
//  Created by Habin Kim on 26/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    
    var counter = 0
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var numberInputField: UITextField!
    
    @IBOutlet weak var numberOutputField: UILabel!
    
    @IBOutlet weak var addBorkButton: UIButton!
    
    @IBOutlet weak var numberSubmitButtonTwo: UIButton!
    
    @IBOutlet weak var secondPageTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = defaults.integer(forKey: "counterKey")
        counterLabel.text = "\(counter)"
      //  let number = defaults.string(forKey: "numberKey")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addOneMoreButton(_ sender: UIButton) {
        counter += 1
        counterLabel.text = "\(counter)"
        defaults.setValue(counter, forKey: "counterKey")
    }
    
    
    @IBAction func numberSubmitButton(_ sender: UIButton) {
        let number = numberInputField.text!
        numberInputField.text = ""
        defaults.setValue(number, forKey: "numberKey")
        numberOutputField.text = "\(number)"
        numberInputField.isHidden = true
        counterLabel.isHidden = true
        addBorkButton.isHidden = true
        numberSubmitButtonTwo.isHidden = true
        secondPageTitle.text = "Your emergency contact is:"
    }
}


