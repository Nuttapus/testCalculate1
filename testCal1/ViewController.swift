//
//  ViewController.swift
//  testCal1
//
//  Created by Teerifle on 3/3/2562 BE.
//  Copyright © 2562 Teerifle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var showTab = ""
    var symbolCal = ""
    var total1 = ""
    @IBOutlet weak var showResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func Click0(){
        if(showResult.text != "0" || showTab.contains(".")){
            showTab += "0"
            showResult.text = showTab
        }
    }
    @IBAction func Click1(_ sender: Any) {
        showTab += "1"
        showResult.text = showTab
    }
    @IBAction func Click2(_ sender: Any) {
        showTab += "2"
        showResult.text = showTab
    }
    @IBAction func Click3(_ sender: Any) {
        showTab += "3"
        showResult.text = showTab
    }
    @IBAction func Click4(_ sender: Any) {
        showTab += "4"
        showResult.text = showTab
    }
    @IBAction func Click5(_ sender: Any) {
        showTab += "5"
        showResult.text = showTab
    }
    @IBAction func Click6(_ sender: Any) {
        showTab += "6"
        showResult.text = showTab
    }
    @IBAction func Click7(_ sender: Any) {
        showTab += "7"
        showResult.text = showTab
    }
    @IBAction func Click8(_ sender: Any) {
        showTab += "8"
        showResult.text = showTab
    }
    @IBAction func Click9(_ sender: Any) {
        showTab += "9"
        showResult.text = showTab
    }
    @IBAction func Cleat(_ sender: Any) {
        showTab = ""
        symbolCal = ""
        showResult.text = "0"
    }
    @IBAction func plus(_ sender: Any) {
        symbolCal = "+"
        total1 = showResult.text!
        showTab = ""
    }
    @IBAction func minus(_ sender: Any) {
        symbolCal = "-"
        total1 = showResult.text!
        showTab = ""
    }
    @IBAction func multi(_ sender: Any) {
        symbolCal = "x"
        total1 = showResult.text!
        showTab = ""
    }
    @IBAction func divide(_ sender: Any) {
        symbolCal = "/"
        total1 = showResult.text!
        showTab = ""
    }
    @IBAction func dot(_ sender: Any) {
        if(!showTab.contains(".")){
            showTab += "."
        }
    }
    @IBAction func result(_ sender: Any) {
        var all = 0.0
        var countIndex = 0
        var countZero = 1
        
        if(symbolCal == "+"){
            all = Double(total1)! + Double(showTab)!
            for (index, element) in String(all).enumerated() {
                if(element == "."){
                    for _ in index..<String(all).count {
                        countIndex += 1
                    }
                }
            }
            for (_, element) in String(all).suffix(countIndex).enumerated() {
                if(element == "0"){
                    countZero+=1
                }
            }
            if(countZero == countIndex){
                showResult.text = String(format:"%.0f",all)
            }else{
                showResult.text = String(all)
            }
            
        }else if(symbolCal == "-"){
            all = Double(total1)! - Double(showTab)!
            for (index, element) in String(all).enumerated() {
                if(element == "."){
                    for _ in index..<String(all).count {
                        countIndex += 1
                    }
                }
            }
            for (_, element) in String(all).suffix(countIndex).enumerated() {
                if(element == "0"){
                    countZero+=1
                }
            }
            if(countZero == countIndex){
                showResult.text = String(format:"%.0f",all)
            }else{
                showResult.text = String(all)
            }
        }else if(symbolCal == "x"){
            all = Double(total1)! * Double(showTab)!
            for (index, element) in String(all).enumerated() {
                if(element == "."){
                    for _ in index..<String(all).count {
                        countIndex += 1
                    }
                }
            }
            for (_, element) in String(all).suffix(countIndex).enumerated() {
                if(element == "0"){
                    countZero+=1
                }
            }
            if(countZero == countIndex){
                showResult.text = String(format:"%.0f",all)
            }else{
                showResult.text = String(all)
            }
        }else if(symbolCal == "/"){
            if(showTab != "0"){
                all = Double(total1)! / Double(showTab)!
                for (index, element) in String(all).enumerated() {
                    if(element == "."){
                        for _ in index..<String(all).count {
                            countIndex += 1
                        }
                    }
                }
                for (_, element) in String(all).suffix(countIndex).enumerated() {
                    if(element == "0"){
                        countZero+=1
                    }
                }
                if(countZero == countIndex){
                    showResult.text = String(format:"%.0f",all)
                }else{
                    showResult.text = String(all)
                }
            }
        }
    }
}

