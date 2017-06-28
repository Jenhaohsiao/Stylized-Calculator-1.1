//
//  Func NumberPart.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-28.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation
import UIKit

extension Functions{
    
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
}
