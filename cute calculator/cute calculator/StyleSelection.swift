//
//  SwitchPageViewController.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-05-14.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import UIKit

class StyleSelection: UIViewController{

    let fullScreenSize = UIScreen.main.bounds.size

    let StyleTitle = UIButton(type: .custom)
    let StyleCarton = UIButton(type: .custom)
    let StyleClassic = UIButton(type: .custom)
    let StyleParkingLot = UIButton(type: .custom)
    var userSelection : UserDefaults!
    var usingFounction = Functions()


    override func viewDidLoad() {
        super.viewDidLoad()

        userSelection = UserDefaults.standard

         self.view.backgroundColor = UIColor.white

        StyleTitle.frame = CGRect(x: fullScreenSize.width * 0.5 - 84 , y: fullScreenSize.height * 0.08,
                                   width: 168 , height:  28)
        StyleTitle.isEnabled = true
        StyleTitle.setImage(UIImage(named:"StyleTitle"), for: .normal)
        StyleTitle.setImage(UIImage(named:"StyleTitle"), for: .highlighted)
        self.view.addSubview(StyleTitle)


        StyleCarton.frame = CGRect(x: fullScreenSize.width * 0.1, y: fullScreenSize.height * 0.15,
                                     width: fullScreenSize.width * 0.35 , height: fullScreenSize.height * 0.35)
        StyleCarton.isEnabled = true
        StyleCarton.setImage(UIImage(named:"Button_Style_Carton_normal"), for: .normal)
        StyleCarton.setImage(UIImage(named:"Button_Style_Carton_highlighted"), for: .highlighted)
        self.view.addSubview(StyleCarton)


        StyleClassic.frame = CGRect(x: fullScreenSize.width * 0.55, y: fullScreenSize.height * 0.15,
                               width: fullScreenSize.width * 0.35 , height: fullScreenSize.height * 0.35)
        StyleClassic.isEnabled = true
        StyleClassic.setImage(UIImage(named:"Button_Style_Classic_normal"), for: .normal)
        StyleClassic.setImage(UIImage(named:"Button_Style_Classic_highlighted"), for: .highlighted)
        self.view.addSubview(StyleClassic)


        StyleParkingLot.frame = CGRect(x: fullScreenSize.width * 0.1, y: fullScreenSize.height * 0.50,
                                    width: fullScreenSize.width * 0.35 , height: fullScreenSize.height * 0.35)
        StyleParkingLot.isEnabled = true
        StyleParkingLot.setImage(UIImage(named:"Button_Style_ParkingLot_normal"), for: .normal)
        StyleParkingLot.setImage(UIImage(named:"Button_Style_ParkingLot_highlighted"), for: .highlighted)
        self.view.addSubview(StyleParkingLot)


        StyleCarton.addTarget(self, action: #selector(goToStyleCarton), for: .touchUpInside)
        StyleClassic.addTarget(self, action: #selector(goToStyleClassic), for: .touchUpInside)
         StyleParkingLot.addTarget(self, action: #selector(goToStyleParkingLot), for: .touchUpInside)

    }

    override func viewWillAppear(_ animated: Bool) {
        usingFounction.cleanAll()
    }

    func backtoPreviousPage(){

        self.dismiss(animated: true, completion: nil)

    }


    func goToStyleCarton() {
        self.present(Style_carton(), animated: true, completion: nil)
        updateSelection(select: "Carton")

    }

    func goToStyleClassic() {
        self.present(Style_classic(), animated: true, completion: nil)
        updateSelection(select: "Classic")

    }


    func goToStyleParkingLot() {

        self.present(Style_ParkingLot(), animated: true, completion: nil)
        updateSelection(select: "ParkingLot")
    }

    public func updateSelection(select: String) {
        userSelection.set(select, forKey:"currentPage")
        userSelection.synchronize()
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
