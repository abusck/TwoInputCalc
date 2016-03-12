//
//  SimpleCalculator.swift
//  UOP_Calculator_MLB406
//
//  Created by Kimberly Abuschinow on 3/11/16.
//  Copyright © 2016 Kimberly Abuschinow. All rights reserved.
//

import Foundation

class SimpleCalculator {
    
    var _firstNumber: Double = 0
    var _secondNumber: Double = 0

    
    init(firstNumber: Double, secondNumber: Double) {
        self._firstNumber = firstNumber
        self._secondNumber = secondNumber
    }
    
    func add(firstNumber: Double, secondNumber: Double) -> Double {
        return (firstNumber + secondNumber)
    }
    
    func subtract(firstNumber: Double, secondNumber: Double) ->Double {
        return (firstNumber - secondNumber)
    }
    
    func multiply(firstNumber: Double, secondNumber: Double) ->Double {
        return (firstNumber * secondNumber)
    }
    
    func divide(firstNumber: Double, secondNumber: Double) ->Double {
        return (firstNumber / secondNumber)
    }
    
    
    
}
