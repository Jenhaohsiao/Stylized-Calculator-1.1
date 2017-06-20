//
//  StartPage.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-11.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import UIKit

class StartPage: UIViewController {

    var pageSelection : String = ""
    var userSelection : UserDefaults!

    override func viewDidLoad() {
        super.viewDidLoad()

        userSelection = UserDefaults.standard

        if let info = userSelection.object(forKey: "currentPage") as? String{
            pageSelection = info
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        styleSeletion(select: pageSelection)
    }

    func styleSeletion(select:String){


        switch select {

        case "Carton":
            self.present(Style_carton(), animated: false, completion: nil)

        case "Classic":
            self.present(Style_classic(), animated: false, completion: nil)

        case "ParkingLot":
            self.present(Style_ParkingLot(), animated: false, completion: nil)

        default:
            self.present(StyleSelection(), animated: false, completion: nil)
     

        }


    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}
