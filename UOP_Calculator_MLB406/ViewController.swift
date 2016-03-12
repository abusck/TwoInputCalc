//
//  ViewController.swift
//  UOP_Calculator_MLB406
//
//  Created by Kimberly Abuschinow on 3/11/16.
//  Copyright © 2016 Kimberly Abuschinow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    // MARK:  Outlets
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var firstNumTextField: UITextField!
    @IBOutlet weak var secondNumTextField: UITextField!
    
    
    // MARK:  Variables and Properties
    var firstNum: Double = 0
    var secondNum: Double = 0
    var result: Double = 0
    
    

    // MARK:  Functions and Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func displayResults() {
        resultsLabel.text = "\(result)"
    }
    
    func getData() {
        
        firstNum = Double(firstNumTextField.text!)!
        secondNum = Double(secondNumTextField.text!)!
    }
    
    func clearData() {
        firstNum = 0
        secondNum = 0
        firstNumTextField.text = ""
        secondNumTextField.text = ""
        result = 0
        resultsLabel.text = ""
    }
   
    // MARK:  Actions
    @IBAction func onAddPressed(sender: UIButton) {
        
        
        getData()
        let calcAdd = SimpleCalculator(firstNumber: firstNum, secondNumber: secondNum)
        result = calcAdd.add(firstNum, secondNumber: secondNum)
        displayResults()
        
        
    }
    
    @IBAction func onSubtractPressed(sender: UIButton) {
        getData()
        let calcSub = SimpleCalculator(firstNumber: firstNum, secondNumber: secondNum)
        result = calcSub.subtract(firstNum, secondNumber: secondNum)
        displayResults()
    }
    
    
    @IBAction func onMultiplyPressed(sender: UIButton) {
        getData()
        let calcMult = SimpleCalculator(firstNumber: firstNum, secondNumber: secondNum)
        result = calcMult.multiply(firstNum, secondNumber: secondNum)
        displayResults()
    }
    
  
    @IBAction func onDividePressed(sender: UIButton) {
        getData()
        let calcDiv = SimpleCalculator(firstNumber: firstNum, secondNumber: secondNum)
        result = calcDiv.divide(firstNum, secondNumber: secondNum)
        displayResults()
    }
    
    @IBAction func onResetPressed(sender: UIButton) {
        clearData()
    }
    


}

