//
//  ViewController.swift
//  UnitTest
//
//  Created by goat_herd on 6/15/19.
//  Copyright © 2019 goat_herd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

class ComplexNumber {
    var realValue: Float = 0
    var imaginaryValue: Float = 0
        
    init(_ r: Float,_ i: Float) {
        realValue = r
        imaginaryValue = i
        
    }
    
    func multiply(with complexNumber: ComplexNumber) -> ComplexNumber {
        let resultRealValue = realValue * complexNumber.realValue -
            imaginaryValue * complexNumber.imaginaryValue
        let resultImaginaryValue = (realValue * complexNumber.imaginaryValue) + (imaginaryValue * complexNumber.realValue)
        return ComplexNumber(resultRealValue, resultImaginaryValue)
    }
}

extension ComplexNumber: Equatable {
    static func == (lhs: ComplexNumber, rhs: ComplexNumber) -> Bool {
        return lhs.realValue == rhs.realValue && lhs.imaginaryValue == rhs.imaginaryValue
    }
}
