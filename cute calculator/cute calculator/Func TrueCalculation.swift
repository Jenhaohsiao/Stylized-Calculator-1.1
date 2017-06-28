//
//  Func TrueCalculation.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-28.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation
import UIKit


extension Functions {

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
