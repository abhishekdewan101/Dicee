//
//  ViewController.swift
//  Dicee
//
//  Created by Abhishek Dewan on 2/25/18.
//  Copyright © 2018 Abhishek Dewan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 = 0
    var randomDiceIndex2 = 0
    
    let diceImageArray = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    
    @IBOutlet weak var mDiceTwo: UIImageView!
    @IBOutlet weak var mDiceOne: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollDice(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        mDiceOne.image = diceImageArray[randomDiceIndex1]
        mDiceTwo.image = diceImageArray[randomDiceIndex2]
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

