//
//  ViewController.swift
//  WarCardGame
//
//  Created by Ryan Lilla on 7/24/19.
//  Copyright © 2019 Ryan Lilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealButtonTapped(_ sender: Any) {
        // Randomize the numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Update the card views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        // Compare the card values
        if leftNumber > rightNumber {
            // Left wins!
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if rightNumber > leftNumber {
            // Right wins!
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // Tie!
        }
    }
    


}

