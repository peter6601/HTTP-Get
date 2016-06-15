//
//  ViewController.swift
//  MissionOne
//
//  Created by 丁暐哲 on 2016/6/15.
//  Copyright © 2016年 Din. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
     var someNumber = Parameter()
    
    
    @IBAction func click(sender: AnyObject) {
        someNumber.a = Int(firstTextField.text!)!
        someNumber.b = Int(secondTextField.text!)!
        let aSingleAPI = FirstAPI()
        aSingleAPI.ConnectAPI(didLoadShot,firstNumber:someNumber.a ,secondNumber: someNumber.b )
        

    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
       firstTextField.delegate = self
        secondTextField.delegate = self
        
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        firstTextField.resignFirstResponder()
        secondTextField.resignFirstResponder()
        return true
    }
    
    func didLoadShot(data: Shots) {
        resultLabel.text = String(data.reslut)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

