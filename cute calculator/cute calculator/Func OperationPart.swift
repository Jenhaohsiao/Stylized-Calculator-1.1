//
//  Func OperationPart.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-28.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation
import UIKit


extension Functions {

    func OperationPart(ButtonSend: Int){

        switch ButtonSend {
        case 11: //clean
            cleanAll()
        case 12: //PosNeg
            PosNeg()
        case 13: //Percent
            Percent()
        case 14: // ÷
            LabealmainTemp = LabealmainToDouble
            TrueCalculation(mathOperation: "/")
            arrayDetailProcess(Input: " ÷ ")
            boolDecimalPoint = false
            booloperator = true
            boolFirstType = true

        case 15: // x
            LabealmainTemp = LabealmainToDouble
            TrueCalculation(mathOperation: "*")
            arrayDetailProcess(Input: " × ")
            boolDecimalPoint = false
            booloperator = true
            boolFirstType = true

        case 16: // -
            LabealmainTemp = LabealmainToDouble
            TrueCalculation(mathOperation: "-")
            arrayDetailProcess(Input: " - ")
            boolDecimalPoint = false
            booloperator = true
            boolFirstType = true

        case 17: // +
            LabealmainTemp = LabealmainToDouble
            TrueCalculation(mathOperation: "+")
            arrayDetailProcess(Input: " + ")
            boolDecimalPoint = false
            booloperator = true
            boolFirstType = true

        case 18: // =
            if arrayDetail.count <= 4 {
                // normal situation
                value02 = LabealmainToDouble
            }else if arrayDetail.count == 5{
                // repeat equal situation
                value01 = result
            }
            getResult(operation: Operation01)
            arrayDetailProcess(Input: " = ")
            boolDone = true
            booloperator = false
            boolDecimalPoint = false

        case 19: // del
            ButtonDel()
        default:
            print("GetActionFromInterface switch Error")
        }        
    }
}
