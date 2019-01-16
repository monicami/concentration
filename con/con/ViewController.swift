//
//  ViewController.swift
//  con
//
//  Created by Ying  on 2019-01-08.
//  Copyright © 2019 Ying . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipcount = 0 {
        didSet{
            flipcountLable.text = "Flip count: \(flipcount)"
        }
    }
    @IBOutlet weak var flipcountLable: UILabel!    
    @IBOutlet var UIButtons: [UIButton]!
    @IBAction func touchcard(_ sender: UIButton) {
        flipcount += 1
        flipcard(withEmoji: "🎃", on: sender)
    }
    
    func flipcard(withEmoji emoji:String, on button: UIButton) {
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            print("the emoji is\(emoji)")
        }else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    

}

