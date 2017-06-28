//
//  Func SaveRecord.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-08.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension Functions {

    func SaveRecord(){
        
        let last1 = arrayDetail[arrayDetail.count - 1]
        var last2 : String = ""
        var last3 : String = ""
        var last4 : String = ""
        var last5 : String = ""

        if arrayDetail.count >= 2 {
            last2 = arrayDetail[arrayDetail.count - 2]
        }
        if arrayDetail.count >= 3 {
            last3 = arrayDetail[arrayDetail.count - 3]
        }

        if arrayDetail.count >= 4 {
            last4 = arrayDetail[arrayDetail.count - 4]
        }
        if arrayDetail.count == 5 {
            last5 = arrayDetail[arrayDetail.count - 5]
        }

        // array

        var addRecord: HistoryClass? = nil
        var tempArray :[HistoryClass] = []
        addRecord = HistoryClass(Process: (last5 + last4 + last3), Result: (last2 + last1))

        tempArray.append(addRecord!)

        HistoryArray = tempArray + HistoryArray

        // core data

        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

        let addRecordToCoreData = EntityHistory(context: context)

        addRecordToCoreData.attributeProcess = addRecord?.operationProcess
        addRecordToCoreData.attributeResult = addRecord?.operationResult

        //Save the data to core date
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
    }
}


