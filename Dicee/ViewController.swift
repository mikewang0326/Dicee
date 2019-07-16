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
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDiceeIndexLeft = Int.random(in: 0 ... 5)
        randomDiceeIndexRight = Int.random(in: 0 ... 5)
        
        diceImageViewLeft.image = UIImage(named: diceArray[randomDiceeIndexLeft])
        diceImageViewRight.image = UIImage(named: diceArray[randomDiceeIndexRight])
        
    }
    
}

