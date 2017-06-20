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
//var arrayOnLabealmain : [String] = ["0"]

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


    func NumberPart(ButtonSend: Int){

        let first = String(Labealmain.characters.prefix(1))
        let LeabelLegth = Labealmain.characters.count

        if boolFirstType == true {

            LeabelLegthMax = 12

        }else if boolFirstType == false{
            if first == "-" || (boolDecimalPoint == true && boolFirstType == false) {

                LeabelLegthMax = 10

            }else if first != "-" && (boolDecimalPoint == true && boolFirstType == false) {

                LeabelLegthMax = 9
            }else if first == "-" && (boolDecimalPoint == true && boolFirstType == false) {

                LeabelLegthMax = 11

            }else {
                LeabelLegthMax = 9

            }


        }



        if LeabelLegth >= LeabelLegthMax {
            print("LeabelLegthMax =",(LeabelLegthMax), "can't input more")
        }else {

            var InputNumber = String(ButtonSend)
            if InputNumber == "10" {
                InputNumber = "."
            }

            if boolFirstType == true {

                Labealmain = ""
                if InputNumber == "." {
                    Labealmain = "0."
                    boolDecimalPoint = true

                }else {
                    Labealmain = Labealmain + InputNumber

                }

                boolFirstType = false

            }else if boolFirstType == false {

                if InputNumber == "." {
                    if boolDecimalPoint == false{
                        Labealmain = Labealmain + InputNumber
                        boolDecimalPoint = true
                    }else if boolDecimalPoint == true{
                        print("Error, the Labealmain alreay has Decimal point")
                    }
                }else if InputNumber != ""{
                    Labealmain = Labealmain + InputNumber
                }
            }

            //create number on Labealmain

            LabealmainToDouble = Double(Labealmain)!

            arrayDetailProcess(Input: formattedWithSeparator(InputString: Labealmain))


        }

    }


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

    func TrueCalculation(mathOperation:String) {

        if booloperator == true && arrayDetail.count == 3{
            value02 = LabealmainToDouble
            getResult(operation: Operation01)
            arrayDetailProcess(Input: " = ")
            boolDone = true
            //            booloperator = false

            Operation01 = mathOperation
        }else if booloperator == true && arrayDetail.count == 2{
            booloperator = false
            Operation01 = mathOperation
            
        }else if boolDone == true && arrayDetail.count == 5{
            value01 = result
            Operation01 = mathOperation
            
        }else if boolDone == true && arrayDetail.count <= 4{
            Operation01 = mathOperation
            
        }else if boolDone == false  {
            value01 = LabealmainToDouble
            boolFirstType = true
            Operation01 = mathOperation
            
        }
        
    }
    
    
    
    
}

