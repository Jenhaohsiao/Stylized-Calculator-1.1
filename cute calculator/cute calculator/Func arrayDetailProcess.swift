//
//  Func arrayDetail.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-04.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation
import UIKit

extension Functions{

    func arrayDetailProcess(Input: String)  {

        if arrayDetail.count == 5 {
            boolRepeatEqual = true
        }else {
            boolRepeatEqual = false
        }


        let last1 = arrayDetail[arrayDetail.count - 1]
        var last3 : String = ""
        var last4 : String = ""
        if arrayDetail.count >= 3 {
            last3 = arrayDetail[arrayDetail.count - 3]
        }

        if arrayDetail.count >= 4 {
            last4 = arrayDetail[arrayDetail.count - 4]
        }


        if boolDone == true && arrayDetail.count == 5{
            arrayDetail.removeAll()
            arrayDetail.append(formattedWithSeparatorResult(InputString: Labealmain))
            value01 = result

            boolDone = false

        }else if boolDone == true && arrayDetail.count <= 4 {
            arrayDetail.removeAll()
            arrayDetail.append(formattedWithSeparatorResult(InputString: Labealmain))
            LabealmainToDouble = Double(Labealmain)!
            value01 = LabealmainToDouble
            boolDone = false
        }





        if Input == " ÷ " || Input == " × " || Input == " - " || Input == " + " {

            if last1 == " ÷ " || last1 == " × " || last1 == " - " || last1 == " + "{

                arrayDetail.remove(at: arrayDetail.count - 1)
                arrayDetail.append(Input)

            }else if last1 == " ÷ " || last1 == " × " || last1 == " - " || last1 == " + "{

            }else {
                arrayDetail.append(Input)

            }

        }else if Input == " = " {


            if last1 == " ÷ " || last1 == " × " || last1 == " - " || last1 == " + "{

                arrayDetail.append(formattedWithSeparatorResult(InputString: String(value01)))
                arrayDetail.append(Input)
                arrayDetail.append(formattedWithSeparatorResult(InputString: Labealmain))


            }else if last1 != " ÷ " || last1 != " × " || last1 != " - " || last1 != " + "{

                if arrayDetail.count == 1 && boolRepeatEqual != true {
                    arrayDetail.append(Input)
                    arrayDetail.append(last1)
                    Operation01 = ""


                }else {

                    if boolRepeatEqual == true {

                        arrayDetail.removeAll()
                        arrayDetail.append(last1)
                        arrayDetail.append(last4)
                        arrayDetail.append(last3)
                        arrayDetail.append(Input)
                        arrayDetail.append(formattedWithSeparatorResult(InputString: Labealmain))

                    }else {
                        arrayDetail.append(Input)
                        let resultTemp = String(result)
                        arrayDetail.append(formattedWithSeparatorResult(InputString: resultTemp))
                        boolRepeatEqual = true
                        
                    }
                }
                
            }
            
            SaveRecord()
            
        }else { // the input is number
            
            if last1 == " ÷ " || last1 == " × " || last1 == " - " || last1 == " + "{
                arrayDetail.append(Input)
                
            }else {
                arrayDetail.remove(at: arrayDetail.count - 1)
                arrayDetail.append(Input)
                
            }
            
        }
        
        LabealDetail = ""
        
        for i in arrayDetail {
            LabealDetail = LabealDetail + i
        }
        
    }
}
