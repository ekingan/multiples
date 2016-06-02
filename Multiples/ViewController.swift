//
//  ViewController.swift
//  Multiples
//
//  Created by Math LLC on 5/28/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //properties
    
    var maxMultiple: Int = 500
    var x: Int = 0
    var y: Int = 0
    var z: Int = 0
    
    
    //outlets
    
    @IBOutlet weak var multiplesLogo: UIImageView!
    @IBOutlet weak var numberText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBAction func onPlayButtonClick(sender: UIButton!) {
        
        if numberText.text != nil && numberText.text != "" {
            
            multiplesLogo.hidden = true
            numberText.hidden = true
            playButton.hidden = true
            
            addButton.hidden = false
            resultsLabel.hidden = false
            
            y = Int(numberText.text!)!
            x = 0
            z = (x + y)
            
            resultsLabel.text = "\(x) + \(y) = \(z)"

            
            
        }
        
    }
    
    
    @IBAction func onAdd() {
        
        x = y
        y = (y+y)
        z = (x + y)
        
        resultsLabel.text = "\(x) + \(y) = \(z)"

        
        if isGameOver() {
            restartGame()
        }
        
    }
    
    
    func isGameOver() -> Bool {
        if z >= maxMultiple {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        z = 0
        y = 0
        z = 0
        
        numberText.text = ""
        multiplesLogo.hidden = false
        numberText.hidden = false
        playButton.hidden = false
        
        addButton.hidden = true
        resultsLabel.hidden = true
    }


}

