//
//  ViewController.swift
//  Dicee
//
//  Created by 王鑫 on 16/07/19.
//  Copyright © 2019 王鑫. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray: Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceeIndexLeft: Int = 0
    var randomDiceeIndexRight: Int = 0
    
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDicesImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype,
                     with event: UIEvent?) {
        updateDicesImages()
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDicesImages()
        
    }
    
    func updateDicesImages() {
        diceImageViewLeft.image = UIImage(named: diceArray[createRandomNumber()])
        diceImageViewRight.image = UIImage(named: diceArray[createRandomNumber()])
    }
    
    func createRandomNumber() -> Int {
        return Int.random(in: 0 ... 5)
    }
    
}

