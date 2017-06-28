//
//  Func getResult.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-03.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation
import UIKit

extension Functions{

    func getResult(operation:String){
        switch operation {
        case "/":
            result = value01 / value02
        case "*":
            result = value01 * value02
        case "-":
            result = value01 - value02
        case "+":
            result = value01 + value02
        default:
            result = value02

            print("func getResult Error")
        }

        Labealmain = String(result)
        LabealmainToDouble = result
        boolFirstType = true
    }
}
