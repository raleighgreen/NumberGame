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
    
    var noOfGuessesMade: Int = 0
    var totalGuesses: Int = 10
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startGame()
    }
    
    @IBAction func lowerPressed(_ sender: UIButton) {
        
        if noOfGuessesMade >= totalGuesses {
            gameLost()
            return
        }
        
        higherNumber = lastGuessed
        lastGuessed = guessNumber(lowerNum: lowerNumber, higherNum: higherNumber)
        askQuestion()
        
    }
    @IBAction func yesPressed(_ sender: UIButton) {
        questionLabel.text = "I won!"
        hideButtons(hidden: true)
    }
    @IBAction func higherPressed(_ sender: UIButton) {
        
        if noOfGuessesMade >= totalGuesses {
            gameLost()
            return
        }
        
        lowerNumber = lastGuessed
        lastGuessed = guessNumber(lowerNum: lowerNumber, higherNum: higherNumber)
        askQuestion()
        
    }
    @IBAction func restartPressed(_ sender: UIButton) {
        startGame()
        hideButtons(hidden: false)
    }
    
    func startGame() {
        
        noOfGuessesMade = 0
        
        number1 = Int(arc4random_uniform(1000))
        number2 = Int(arc4random_uniform(1000))
        
        lowerNumber = number1 < number2 ? number1 : number2
        higherNumber = number1 > number2 ? number1 : number2
    
        lastGuessed = guessNumber(lowerNum: lowerNumber, higherNum: higherNumber)
        messageLabel.text = "Think of a number between \(lowerNumber) & \(higherNumber)"
        
        askQuestion()
        
    }
    
    func guessNumber(lowerNum: Int, higherNum: Int) -> Int {
        noOfGuessesMade += 1
        remainingGuessesLabel.text = "\(totalGuesses-noOfGuessesMade)"
        
        return (higherNum - lowerNum) / 2 + lowerNumber
    }
    
    func askQuestion() {
        
        questionLabel.text = "Is your number \(lastGuessed)?"
        
    }
    
    func hideButtons(hidden: Bool) {
        btnYes.isHidden = hidden
        btnLower.isHidden = hidden
        btnHigher.isHidden = hidden
    }
    
    func gameLost() {
        questionLabel.text = "You Won!"
        hideButtons(hidden: true)
    }
}

