//
//  Func Del.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-02.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation
import UIKit

func ButtonDel(){

    let last1 = Labealmain.characters.last!

    if boolFirstType == true {

    }else if  boolFirstType == false {

        var delNumber = Labealmain

        delNumber.remove(at: (delNumber.index(before: (delNumber.endIndex))))

        if delNumber == "" || delNumber == "-"  {
            Labealmain = "0"
            boolFirstType = true


        }else if last1 == "." {
            boolDecimalPoint = false
             Labealmain = delNumber

        }else if delNumber != "" &&  delNumber != "."{
            Labealmain = delNumber
        }

    }

    //create number on Labealmain

    LabealmainToDouble = Double(Labealmain)!
    arrayDetailProcess(Input: formattedWithSeparatorResult(InputString: Labealmain))
    
}
