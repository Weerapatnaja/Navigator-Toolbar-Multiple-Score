//
//  ViewController.swift
//  Navigetor Toolbar Multiple Screen
//
//  Created by Student13 on 6/14/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit
    var intNumber   = 1
    
    
    

    @IBAction func decreseNumber(_ sender: Any) {
        showMessage(strMessage: "Click decreseNumber")
        intNumber -= 1
        intNumber = checkNumber(intNumber: intNumber)
        showNumber(intNumber: intNumber)
    }
    
       
    @IBAction func HomeNumber(_ sender: Any) {
        showMessage(strMessage: "Click Reset")
        intNumber = 1
        showNumber(intNumber: intNumber)
    }
    
    
    @IBAction func increseNumber(_ sender: Any) {
        showMessage(strMessage: "Click insreseNumber")
        intNumber += 1
        intNumber = checkNumber(intNumber: intNumber)
        showNumber(intNumber: intNumber)
    }
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }   //Main Method
    
    func checkNumber(intNumber: Int) -> Int {
        
        var intResult = intNumber
         //At 11
        if intNumber == 11 {
            intResult = -10
        }
        //At -11
        if intNumber == -11 {
            intResult = 10
        }
        
        return intResult
        
    }
    
    
    func showNumber(intNumber: Int) -> Void {
        let strNumber  = String(intNumber)
        numberLabel.text = strNumber
           }
    
    
    func showMessage(strMessage: String) -> Void {
        print("Message ==> \(strMessage)")
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

