//
//  Func PosNeg.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-02.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation
import UIKit

extension Functions{

    func PosNeg(){
        //Label
        let first = String(Labealmain.characters.prefix(1))
        if first == "-" {
            Labealmain.remove(at: Labealmain.startIndex)
        }else if first != "-"{
            Labealmain = "-" + Labealmain
        }

        LabealmainToDouble = Double(Labealmain)!
        // Detail
        arrayDetail.remove(at: arrayDetail.count - 1)
        arrayDetail.append(Labealmain)

        arrayDetailProcess(Input: formattedWithSeparatorResult(InputString: Labealmain))


    }
}
