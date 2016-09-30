//
//  ViewController.swift
//  Practise
//
//  Created by G on 29/09/16.
//  Copyright © 2016 erdgabios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterNumber: UITextField!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        
        if let enteredString = enterNumber.text {
            let userEnteredInteger = Int(enteredString)
            if let number = userEnteredInteger , number > 0 {
                var isPrime = true
                var i = 2
                
                
                if number == 1 {
                    isPrime = false
                }
                
                
                
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                        
                    }
                    i+=1
                }
                if isPrime {
                    result.text = "\(number): IS PRIME"
                    result.textColor = UIColor.green
                } else {
                    result.text = "\(number): IS NOT PRIME"
                    result.textColor = UIColor.red
                }
                
            } else {
                result.text = "GIVE ME A POSITIVE WHOLE NUMBER!"
                result.textColor = UIColor.black
                
            }
        }
    }
    
    @IBOutlet weak var result: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

