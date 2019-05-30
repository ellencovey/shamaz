//
//  ViewController.swift
//  Shamaz
//
//  Created by Ellen Covey on 07/05/2019.
//  Copyright © 2019 Ellen Covey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // colours for use in label and buttons
    let defaultColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    let highlightColor = UIColor(red: 0.0, green: 0.478, blue: 1.0, alpha: 1.0)
    let deactivatedColor = UIColor(red: 0.0, green: 0.478, blue: 1.0, alpha: 0.3)
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var reflectButton: RoundButton!
    @IBOutlet weak var dreamButton: RoundButton!
    @IBOutlet weak var nextButton: RoundButton!
    
    // functions to put random actions and times together
    @IBAction func generateReflection() {
        let reflectAction = Utility.generateReflectAction()
        let reflectTime = Utility.generateReflectTime()
        message.text = "\(reflectAction)" + " \(reflectTime)?"
        message.textColor = defaultColor
        toggleButtons(turnedOn: true)
    }
    
    @IBAction func generateDream(_ sender: Any) {
        let dreamAction = Utility.generateDreamAction()
        let dreamTime = Utility.generateDreamTime()
        message.text = "\(dreamAction)" + " \(dreamTime)?"
        message.textColor = defaultColor
        toggleButtons(turnedOn: true)
    }
    
    // function to show next random person
    @IBAction func generatePerson(_ sender: Any) {
        let playerNumber = Int.random(in: 1...10)
        message.text = "It's player \(playerNumber)'s turn"
        message.textColor = highlightColor
        toggleButtons(turnedOn: false)
    }
    
    // function to ensure only dream & reflect or next person buttons are active
    func toggleButtons(turnedOn: Bool) {
        nextButton.isEnabled = turnedOn
        reflectButton.isEnabled = !turnedOn
        dreamButton.isEnabled = !turnedOn
        
        if reflectButton.isEnabled == false {
            reflectButton.backgroundColor = deactivatedColor
            dreamButton.backgroundColor = deactivatedColor
            nextButton.backgroundColor = highlightColor
        }
            
        else {
            reflectButton.backgroundColor = highlightColor
            dreamButton.backgroundColor = highlightColor
            nextButton.backgroundColor = deactivatedColor
        }
        
    }
}
