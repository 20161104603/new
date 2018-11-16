
//
//  ViewController.swift
//  asd
//
//  Created by 20161104603 on 2018/10/31.
//  Copyright © 2018 20161104603. All rights reserved.
//

//
import UIKit

class ViewController: UIViewController {
    
    var temp : Double = 0
    var temp1 = 0
    var judge = 0
    var flag = 0
    var add = 0
    var sum = 0.0
    var d = 0

    var i = 0
    
    @IBOutlet weak var caculaterDisplay: UITextField!
    var re = 0
    
    @IBAction func button_1(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "1"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"1"
        }
    }
    
    
    @IBAction func button_2(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "2"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"2"
        }
    }
    
    
    @IBAction func button_3(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "3"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"3"
        }
    }
    
    
    @IBAction func button_4(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "4"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"4"
        }
    }
    
    
    @IBAction func button_5(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "5"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"5"
        }
    }
    
    
    @IBAction func button_6(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "6"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"6"
        }
    }
    
    
    @IBAction func button_7(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "7"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"7"
        }
    }
    
    
    @IBAction func button_8(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "8"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"8"
        }
    }
    
    
    @IBAction func button_9(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "9"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"9"
        }
    }
    
    
    @IBAction func button_0(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "0"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"0"
        }
    }
    
    
    @IBAction func button_delete(_ sender: Any) {
        caculaterDisplay.text = ""
    }

    
    @IBAction func button_sum(_ sender: Any) {
        switch flag {
        case 1:
            sum = sum + Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
           i = 0
        case 2:
            sum = sum - Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
            i = 0
            
        case 3:
            sum = sum * Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
            i = 0
        case 4:
            if caculaterDisplay.text=="0"
            {
        break
            }else{
                sum = sum / Double(caculaterDisplay.text!)!
                caculaterDisplay.text = "\(sum)"
            }
            i = 0
            
        default:
            break
        }
        caculaterDisplay.text = String()
        
        if judge == 0 {
            caculaterDisplay.text = String(format:"%f",sum)
            while (caculaterDisplay.text?.last == "0")
            {
                caculaterDisplay.text?.removeLast()
            }
            if(caculaterDisplay.text?.last == ".")
            {
                caculaterDisplay.text?.removeLast()
            }
        }
    }
    
    @IBAction func button_dot(_ sender: Any) {
        if caculaterDisplay.text == ""
        {
            caculaterDisplay.text = "0."}
        else{
            if d == 1
            {
                caculaterDisplay.text = caculaterDisplay.text
            }
            else{
                caculaterDisplay.text = caculaterDisplay.text!+"."
                d = 1
        }
        }
        judge = 0
    }
    @IBAction func clear(_ sender: Any) {
        
        caculaterDisplay.text = ""
        d = 0 
        re = 0
        
    }
    
    @IBAction func button_add(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        if(i == 0)
        {
            caculaterDisplay.text = ""
            sum = temp
        }
        i=i+1
        if(i == 2)
        {
            sum = sum + Double(caculaterDisplay.text!)!
            caculaterDisplay.text = ""
        }
        i = 1
        flag = 1
    }
    
    
    @IBAction func button_minus(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        if(i == 0)
        {
            caculaterDisplay.text = ""
            sum = temp
        }
        i=i+1
        if(i == 2)
        {
            sum = sum - Double(caculaterDisplay.text!)!
            caculaterDisplay.text = ""
        }
        i = 1
        flag = 2
    }
    
    
    @IBAction func button_multiply(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        if(i == 0)
        {
            caculaterDisplay.text = ""
            sum = temp
        }
        i=i+1
        if(i == 2)
        {
            sum = sum * Double(caculaterDisplay.text!)!
            caculaterDisplay.text = ""
        }
        i = 1
        flag = 3
    }
    
    
    @IBAction func button_divide(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        if(i == 0)
        {
            caculaterDisplay.text = ""
            sum = temp
        }
        i=i+1
        if(i == 2)
        {
            sum = sum / Double(caculaterDisplay.text!)!
            caculaterDisplay.text = ""
        }
        i = 1
        flag = 4
    }
    
   
 
    
    
    @IBAction func square(_ sender: Any) {
        let count1 = Double(caculaterDisplay.text!)!
        let count2 = count1 * count1
        caculaterDisplay.text = String(count2)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}
