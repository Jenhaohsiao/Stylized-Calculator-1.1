//
//  HistoryClass.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-07.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation

public protocol MakeRecordProtocol{
    func addRecord()
}


public class HistoryClass :MakeRecordProtocol{

    var operationProcess : String
    var operationResult : String

        //initializer

    init(){
        operationProcess = ""
        operationResult = ""
    }

    init(Process: String, Result: String){
        self.operationProcess = Process
        self.operationResult = Result
    }


    public func addRecord(){

        print("add one Record :",(self.operationProcess),(self.operationResult))
    }
}
