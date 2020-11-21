//
//  ViewController.swift
//  Calculator
//
//  Created by Mahoto Sasaki on 6/3/20.
//  Copyright © 2020 mo3aru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var firstNum:Double = 0
    var total:Double = 0
    var operation:String = ""
    var isOperation:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func displayOne(_ sender: UIButton) {
        displayNum(num: "1")
    }
    
    @IBAction func displayTwo(_ sender: UIButton) {
        displayNum(num: "2")
    }
    @IBAction func displayThree(_ sender: UIButton) {
        displayNum(num: "3")
    }
    
    @IBAction func add(_ sender: UIButton) {
        isOperation = true
        operation = "+"
        total += Double(display.text!) ?? 0
    }
    
    @IBAction func equal(_ sender: UIButton) {
        if(operation == "+"){
            total += Double(display.text!) ?? 0
        } else if(operation == "-"){
        } else if(operation == "*"){
        } else if(operation == "/"){
        } else {
        }
        print(total)
        displayNum(num: String(total))
        total = 0
    }
    
    
    func displayNum(num:String){
        if(isOperation){
            display.text! = num
            isOperation = false
        } else {
            if(display.text == "0") {
                display.text! = num
            } else {
                display.text! += num
            }
        }
    }
    
}

