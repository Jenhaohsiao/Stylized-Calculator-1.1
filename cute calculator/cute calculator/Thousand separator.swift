//
//  Thousand separator.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-05-25.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation


extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        formatter.maximumFractionDigits = 0
        formatter.generatesDecimalNumbers = true
        formatter.notANumberSymbol = "Error,Not a Number"
        formatter.paddingPosition = .beforePrefix
        formatter.numberStyle = .decimal
        formatter.roundingMode = .down
        return formatter
    }()


    static let withSeparatorResult: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        formatter.maximumFractionDigits = 10
        formatter.generatesDecimalNumbers = true
        formatter.notANumberSymbol = "Error,Not a Number"
        formatter.paddingPosition = .beforePrefix
        formatter.numberStyle = .decimal
        formatter.roundingMode = .down
        return formatter
    }()

}

extension Integer {
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self) ?? ","
    }
}

extension Double {
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self) ?? ","
    }
}

extension Double {
    var formattedWithSeparatorResult: String {
        return Formatter.withSeparatorResult.string(for: self) ?? ","
    }
}


func formattedWithSeparator(InputString:String) -> String {


    let Input = Double(InputString)!
    let Output = String(Input.formattedWithSeparator)!


    let num1 = InputString
    let num2 = Int(Double(num1)!)
    var num3 = String(num2)
    let numIntLong = num3.characters.count
    let numLong = InputString.characters.count


    if  numLong > numIntLong  {

        let plusNum=(num1 as NSString).substring(from: numIntLong)
        return Output + plusNum

    }else{

        return Output
    }

}


func formattedWithSeparatorResult(InputString:String) -> String {
    let Input = Double(InputString)!
    let Output = String(Input.formattedWithSeparatorResult)!
    
    return Output
}


