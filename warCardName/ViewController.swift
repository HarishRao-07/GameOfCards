//
//  ViewController.swift
//  warCardName
//
//  Created by rd on 01/09/20.
//  Copyright © 2020 vishnu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
  
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLable: UILabel!
    
    @IBOutlet weak var rightScoreLable: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        print(leftNumber)
        let rightNumber = Int.random(in: 2...14)
        print(rightNumber)
        
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        if leftNumber>rightNumber {
            //left side player win
            leftScore += 1
            leftScoreLable.text = String(leftScore)
        }
        else if rightNumber > leftNumber {
            //left sie player win
            rightScore += 1
            rightScoreLable.text = String(rightScore)
        }
        
        else {
            
            //tie
            rightScore += 1
            leftScore += 1
            
            leftScoreLable.text = String(leftScore)
            rightScoreLable.text = String(rightScore)
        }
        
    }
    
    
}

