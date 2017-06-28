//
//  Functions1.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-01.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation
import UIKit

var ButtonInput : Int = 0
var ButtonToArray : String = ""
var arrayDetail : [String] = ["0"]
var mathOperation : String = ""
var Labealmain : String = "0"
var LabealmainToDouble : Double = 0.0
var LabealDetail : String = ""

//calculation
var value01 :Double = 0.0
var value02 :Double = 0.0
var result :Double = 0.0
var LabealmainTemp :Double = 0.0

var Operation01 : String = ""
var Operation02 : String = ""
var LeabelLegthMax : Int = 9

//Bool
var boolFirstType : Bool = true
var boolDecimalPoint : Bool = false
var boolDone : Bool = false
var booloperator : Bool = false
var boolRepeatEqual : Bool = false
var boolLabealIsNegative: Bool = false

class Functions {

    //MARK: Separte numbers and operation

    func GetActionFromInterface(ButtonSend: Int) -> (numberOnLabeal: String, numberOnLabelDetail:String) {

        ButtonInput = ButtonSend

        if ButtonSend >= 0 && ButtonSend <= 10 {
            // Number 0 - 9, and Decimal point (button 10)
            NumberPart(ButtonSend: ButtonSend)
        }else if ButtonSend >= 11 {
            OperationPart(ButtonSend: ButtonSend)
        }else {
            print("Func GetActionFromInterface, Error")
        }

        if arrayDetail.count == 0 || LabealDetail == "" {
            return (Labealmain, "0")

        }else if ButtonSend >= 12 && ButtonSend <= 19 {

            return ( formattedWithSeparatorResult(InputString: Labealmain), LabealDetail)

        } else {

            return ( formattedWithSeparator(InputString: Labealmain), LabealDetail)

        }
    }

    
}

