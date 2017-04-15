//
//  ViewController.swift
//  finger guesser
//
//  Created by Yoganand Subramanyam on 01/08/16.
//  Copyright © 2016 aycommunity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageresult: UIImageView!

    @IBOutlet var numField: UITextField!
    @IBOutlet var result: UILabel!
    
    
    @IBAction func checkOption(sender: AnyObject) {
    
        if let num = Int(numField.text!){
        let generatedNum = Int(arc4random_uniform(6))
        print(generatedNum)
        if num > 5
        {
            result.text = "Enter a number between 0-5"
            
        }
        else if num == generatedNum
        {
            result.text = " Your guess is correct, it is \(num)"
            imageresult.image = UIImage(named: "congratulationsv2")
            
        }
        else
        {
            result.text = " Better Luck next time.I am holding \(generatedNum)"
            imageresult.image = UIImage(named: "middle finger")
        }
    }
        else{
            result.text = "No number is entered"
        }

        
}

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

