//
//  Func Percent.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-02.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation
import UIKit

extension Functions{

    func Percent(){
        print("func Percent")
        Labealmain = String(Double(Labealmain)! * 0.01)
        LabealmainToDouble = Double(Labealmain)!

        arrayDetailProcess(Input: formattedWithSeparatorResult(InputString: Labealmain))
        
    }
}
