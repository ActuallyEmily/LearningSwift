//
//  ViewController.swift
//  War App
//
//  Created by Emily Hall on 30/08/2018.
//  Copyright © 2018 Emily Hall. All rights reserved.
//

import UIKit

class ViewController:UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Randomizes the cards viewed and changes the score based on who's card is higher
    @IBAction func dealTapped(_ sender: Any) {
        // Random numbers generated
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        // Card image associated to the random number showed
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        // Adding 1 to the score for the player with the highest card
        if leftRandomNumber > rightRandomNumber {
           leftScore += 1
            // Update the label for the leftScore
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            rightScore += 1
            // Update the label for rightScore
            rightScoreLabel.text = String(rightScore)
        }
        else {
            
        }
    }
    


}

