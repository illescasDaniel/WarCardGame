//
//  ViewController.swift
//  War (Card Game)
//
//  Created by Daniel Illescas Romero on 03/07/16.
//  Copyright © 2016 Daniel Illescas Romero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var firstCardImageView: UIImageView!
	@IBOutlet weak var secondCardImageView: UIImageView!

	@IBOutlet weak var playerScoreLabel: UILabel!
	var playerScore: Int = 0
	
	@IBOutlet weak var enemyScoreLabel: UILabel!
	var enemyScore: Int = 0
	
	var cardNamesArray = ["card2", "card3", "card4", "card5", "card6", "card7", "card8",
	                      "card9", "card10", "jack", "queen", "king", "ace"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func playRoundTapped(sender: UIButton) {
		
		let firstRandomNumber = Int(arc4random_uniform(13))
		let secondRandomNumber = Int(arc4random_uniform(13))
		
		let firstCardString = cardNamesArray[firstRandomNumber]
		let secondCardString = cardNamesArray[secondRandomNumber]
		
		firstCardImageView.image = UIImage(named: firstCardString)
		secondCardImageView.image = UIImage(named: secondCardString)
		
		if firstRandomNumber > secondRandomNumber {
			playerScore += 1
			playerScoreLabel.text = String(playerScore)
		}
		if secondRandomNumber > firstRandomNumber {
			enemyScore += 1
			enemyScoreLabel.text = String(enemyScore)
		}
		
	}

}

