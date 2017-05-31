//
//  ViewController.swift
//  NumberGame
//
//  Created by Raleigh Green on 5/31/17.
//  Copyright © 2017 Raleigh Green. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number1: Int = 0
    var number2: Int = 0
    
    var lowerNumber: Int = 0
    var higherNumber: Int = 0
    
    var lastGuessed: Int = 0
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var remainingGuessesLabel: UILabel!
    
    @IBOutlet weak var btnLower: UIButton!
    @IBOutlet weak var btnYes: UIButton!
    @IBOutlet weak var btnHigher: UIButton!
    @IBOutlet weak var btnRestart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func lowerPressed(_ sender: UIButton) {
        print("lowerPressed")
    }
    @IBAction func yesPressed(_ sender: UIButton) {
        print("yesPressed")
    }
    @IBAction func higherPressed(_ sender: UIButton) {
        print("higherPressed")
    }
    @IBAction func restartPressed(_ sender: UIButton) {
        print("restartPressed")
    }
    
}

