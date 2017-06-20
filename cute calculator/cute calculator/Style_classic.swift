//
//  swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-05-10.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import UIKit
import AVFoundation

class Style_classic: UIViewController {


    let ButtonNumber1 = UIButton(type: .custom)        //Create Button
    let ButtonNumber2 = UIButton(type: .custom)
    let ButtonNumber3 = UIButton(type: .custom)
    let ButtonNumber4 = UIButton(type: .custom)
    let ButtonNumber5 = UIButton(type: .custom)
    let ButtonNumber6 = UIButton(type: .custom)
    let ButtonNumber7 = UIButton(type: .custom)
    let ButtonNumber8 = UIButton(type: .custom)
    let ButtonNumber9 = UIButton(type: .custom)
    let ButtonNumber0 = UIButton(type: .custom)
    let ButtonClearnAll = UIButton(type: .custom)
    let ButtonPosNeg = UIButton(type: .custom)
    let ButtonPercent = UIButton(type: .custom)
    let ButtonAddition = UIButton(type: .custom)
    let ButtonSubtraction = UIButton(type: .custom)
    let ButtonMultiplication = UIButton(type: .custom)
    let ButtonDivision = UIButton(type: .custom)
    let ButtonPoint = UIButton(type: .custom)
    let ButtonEqual = UIButton(type: .custom)
    let ButtonDel = UIButton(type: .custom)
    let ButtonSetup = UIButton(type: .custom)
    let ButtonHistory = UIButton(type: .custom)

    let LabelShow = UILabel()
    let LabelShowDetail = UILabel()

    var GestureSwipeRight = UISwipeGestureRecognizer()


    let fullScreenSize = UIScreen.main.bounds.size

    let ButtonBackGroundColor1 = UIColor.init(red: 0.8157, green: 0.8157, blue: 0.8157, alpha: 1.0)
    let ButtonBackGroundColor2 = UIColor.init(red: 0.8627, green: 0.8627, blue: 0.8627, alpha: 1.0)
    let ButtonBackGroundColor3 = UIColor.init(red: 0.9647, green: 0.5294, blue: 0.1725, alpha: 1.0)

    let ButtonFrontColor1 = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    let ButtonFrontColor2 = UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    let ScreenBackgroundColor = UIColor.init(red: 0.1412, green: 0.1412, blue: 0.1412, alpha: 1.0)
    let ButtonBorderWidth : CGFloat = 5
    let ButtonCornerRadius: CGFloat = 20
    let ButtonBorderColor = UIColor.darkGray.cgColor
    var ButtonFontAndSize =  UIFont(name:  "HelveticaNeue-Thin", size: 25)
    var LabelFontAndSize = UIFont(name:  "HelveticaNeue-Thin", size: 80)
    var LabelShowDetailFontAndSize = UIFont(name:  "HelveticaNeue-Thin", size: 25)

    var gradientLayer: CAGradientLayer!

    var buttonSound:AVAudioPlayer?


    override func viewDidLoad() {
        super.viewDidLoad()

        //Background

        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.gray.cgColor, UIColor.black.cgColor]
        self.view.layer.addSublayer(gradientLayer)

        //MARK: Set ButtonNumber 0
        ButtonNumber0.frame = CGRect(x: fullScreenSize.width * 0.0, y: fullScreenSize.height * 0.875,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonNumber0.isEnabled = true
        ButtonNumber0.setImage(UIImage(named:"Button0_normal"), for: .normal)
        ButtonNumber0.setImage(UIImage(named:"Button0_highlighted"), for: .highlighted)


        self.view.addSubview(ButtonNumber0)

        //MARK: Set ButtonNumber ->
        ButtonDel.frame = CGRect(x: fullScreenSize.width * 0.25, y: fullScreenSize.height * 0.875,
                                 width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonDel.isEnabled = true
        ButtonDel.setImage(UIImage(named:"ButtonDel_normal"), for: .normal)
        ButtonDel.setImage(UIImage(named:"ButtonDel_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonDel)


        //MARK: Set ButtonNumber .
        ButtonPoint.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.875,
                                   width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonPoint.isEnabled = true
        ButtonPoint.setImage(UIImage(named:"ButtonPoint_normal"), for: .normal)
        ButtonPoint.setImage(UIImage(named:"ButtonPoint_highlighted"), for: .highlighted)
        self.view.addSubview(ButtonPoint)

        //MARK: Set ButtonNumber =
        ButtonEqual.frame = CGRect(x: fullScreenSize.width * 0.75, y: fullScreenSize.height * 0.875,
                                   width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonEqual.isEnabled = true
        ButtonEqual.setImage(UIImage(named:"ButtonEqual_normal"), for: .normal)
        ButtonEqual.setImage(UIImage(named:"ButtonEqual_highlighted"), for: .highlighted)
        self.view.addSubview(ButtonEqual)


        //MARK: Set ButtonNumber 1
        ButtonNumber1.frame = CGRect(x: fullScreenSize.width * 0.0, y: fullScreenSize.height * 0.75,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonNumber1.isEnabled = true
        ButtonNumber1.setImage(UIImage(named:"Button1_normal"), for: .normal)
        ButtonNumber1.setImage(UIImage(named:"Button1_highlighted"), for: .highlighted)


        self.view.addSubview(ButtonNumber1)


        //MARK: Set ButtonNumber 2
        ButtonNumber2.frame = CGRect(x: fullScreenSize.width * 0.25, y: fullScreenSize.height * 0.75,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonNumber2.isEnabled = true
        ButtonNumber2.setImage(UIImage(named:"Button2_normal"), for: .normal)
        ButtonNumber2.setImage(UIImage(named:"Button2_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber2)

        //MARK: Set ButtonNumber 3
        ButtonNumber3.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.75,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonNumber3.isEnabled = true
        ButtonNumber3.setImage(UIImage(named:"Button3_normal"), for: .normal)
        ButtonNumber3.setImage(UIImage(named:"Button3_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber3)

        //MARK: Set ButtonNumber +
        ButtonAddition.frame = CGRect(x: fullScreenSize.width * 0.75, y: fullScreenSize.height * 0.75,
                                      width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonAddition.isEnabled = true
        ButtonAddition.setImage(UIImage(named:"ButtonAddition_normal"), for: .normal)
        ButtonAddition.setImage(UIImage(named:"ButtonAddition_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonAddition)


        //MARK: Set ButtonNumber 4
        ButtonNumber4.frame = CGRect(x: fullScreenSize.width * 0.0, y: fullScreenSize.height * 0.625,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonNumber4.isEnabled = true
        ButtonNumber4.setImage(UIImage(named:"Button4_normal"), for: .normal)
        ButtonNumber4.setImage(UIImage(named:"Button4_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber4)


        //MARK: Set ButtonNumber 5
        ButtonNumber5.frame = CGRect(x: fullScreenSize.width * 0.25, y: fullScreenSize.height * 0.625,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonNumber5.isEnabled = true
        ButtonNumber5.setImage(UIImage(named:"Button5_normal"), for: .normal)
        ButtonNumber5.setImage(UIImage(named:"Button5_highlighted"), for: .highlighted)


        self.view.addSubview(ButtonNumber5)

        //MARK: Set ButtonNumber 6
        ButtonNumber6.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.625,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonNumber6.isEnabled = true
        ButtonNumber6.setImage(UIImage(named:"Button6_normal"), for: .normal)
        ButtonNumber6.setImage(UIImage(named:"Button6_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber6)

        //MARK: Set ButtonNumber --
        ButtonSubtraction.frame = CGRect(x: fullScreenSize.width * 0.75, y: fullScreenSize.height * 0.625,
                                         width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonSubtraction.isEnabled = true
        ButtonSubtraction.setImage(UIImage(named:"ButtonSubtraction_normal"), for: .normal)
        ButtonSubtraction.setImage(UIImage(named:"ButtonSubtraction_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonSubtraction)

        //MARK: Set ButtonNumber 7
        ButtonNumber7.frame = CGRect(x: fullScreenSize.width * 0.0, y: fullScreenSize.height * 0.5,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonNumber7.isEnabled = true
        ButtonNumber7.setImage(UIImage(named:"Button7_normal"), for: .normal)
        ButtonNumber7.setImage(UIImage(named:"Button7_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber7)


        //MARK: Set ButtonNumber 8
        ButtonNumber8.frame = CGRect(x: fullScreenSize.width * 0.25, y: fullScreenSize.height * 0.5,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonNumber8.isEnabled = true
        ButtonNumber8.setImage(UIImage(named:"Button8_normal"), for: .normal)
        ButtonNumber8.setImage(UIImage(named:"Button8_highlighted"), for: .highlighted)


        self.view.addSubview(ButtonNumber8)

        //MARK: Set ButtonNumber 9
        ButtonNumber9.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.5,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonNumber9.isEnabled = true
        ButtonNumber9.setImage(UIImage(named:"Button9_normal"), for: .normal)
        ButtonNumber9.setImage(UIImage(named:"Button9_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber9)

        //MARK: Set ButtonNumber x
        ButtonMultiplication.frame = CGRect(x: fullScreenSize.width * 0.75, y: fullScreenSize.height * 0.5,
                                            width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonMultiplication.isEnabled = true
        ButtonMultiplication.setImage(UIImage(named:"ButtonMultiplication_normal"), for: .normal)
        ButtonMultiplication.setImage(UIImage(named:"ButtonMultiplication_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonMultiplication)

        //MARK: Set ButtonNumber C
        ButtonClearnAll.frame = CGRect(x: fullScreenSize.width * 0.0, y: fullScreenSize.height * 0.375,
                                       width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonClearnAll.isEnabled = true
        ButtonClearnAll.setImage(UIImage(named:"ButtonClean_normal"), for: .normal)
        ButtonClearnAll.setImage(UIImage(named:"ButtonClean_highlighted"), for: .highlighted)
        self.view.addSubview(ButtonClearnAll)


        //MARK: Set ButtonNumber ±
        ButtonPosNeg.frame = CGRect(x: fullScreenSize.width * 0.25, y: fullScreenSize.height * 0.375,
                                    width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonPosNeg.isEnabled = true
        ButtonPosNeg.setImage(UIImage(named:"ButtonPosNeg_normal"), for: .normal)
        ButtonPosNeg.setImage(UIImage(named:"ButtonPosNeg_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonPosNeg)

        //MARK: Set ButtonNumber %
        ButtonPercent.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.375,
                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonPercent.isEnabled = true
        ButtonPercent.setImage(UIImage(named:"ButtonPercent_normal"), for: .normal)
        ButtonPercent.setImage(UIImage(named:"ButtonPercent_highlighted"), for: .highlighted)
        self.view.addSubview(ButtonPercent)

        //MARK: Set ButtonNumber ÷
        ButtonDivision.frame = CGRect(x: fullScreenSize.width * 0.75, y: fullScreenSize.height * 0.375,
                                      width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
        ButtonDivision.isEnabled = true
        ButtonDivision.setImage(UIImage(named:"ButtonDivision_normal"), for: .normal)
        ButtonDivision.setImage(UIImage(named:"ButtonDivision_highlighted"), for: .highlighted)
        self.view.addSubview(ButtonDivision)

        //MARK: SetUP Icon
        ButtonSetup.frame = CGRect(x: fullScreenSize.width * 0.05, y: fullScreenSize.height * 0.04,
                                   width: 30, height: 30)
        ButtonSetup.isEnabled = true
        ButtonSetup.setImage(UIImage(named:"Icon-Setup_normal"), for: .normal)
        ButtonSetup.setImage(UIImage(named:"Icon-Setup_highlighted"), for: .highlighted)
        ButtonSetup.layer.borderColor = ButtonBorderColor
        ButtonSetup.layer.zPosition = 3
        self.view.addSubview(ButtonSetup)

        //MARK: History

        ButtonHistory.frame = CGRect(x: fullScreenSize.width * 0.20, y: fullScreenSize.height * 0.04,
                                     width: 30, height: 30)
        ButtonHistory.setImage(UIImage(named:"Icon-History_normal"), for: .normal)
        ButtonHistory.setImage(UIImage(named:"Icon-History_highlighted"), for: .highlighted)
        ButtonHistory.layer.borderColor = ButtonBorderColor
        ButtonHistory.layer.borderColor = ButtonBorderColor
        ButtonHistory.layer.zPosition = 3
        self.view.addSubview(ButtonHistory)


        //MARK: Set Label show

        LabelShow.frame = CGRect(x: fullScreenSize.width * 0.025, y: fullScreenSize.height * 0.10,
                                 width: fullScreenSize.width * 0.95 , height: fullScreenSize.height * 0.18)
        LabelShow.text = "0"
        LabelShow.numberOfLines = 1
        LabelShow.font = LabelFontAndSize
        //        LabelShow.lineBreakMode = .byWordWrapping
        LabelShow.minimumScaleFactor = 0.5
        LabelShow.adjustsFontSizeToFitWidth = true
        LabelShow.textAlignment = .right
        LabelShow.textColor = ButtonFrontColor2
        LabelShow.backgroundColor = ScreenBackgroundColor
        LabelShow.layer.cornerRadius = 15
        LabelShow.clipsToBounds = true
        LabelShow.layer.zPosition = 3
        self.view.addSubview(LabelShow)


        LabelShowDetail.frame = CGRect(x: fullScreenSize.width * 0.025, y: fullScreenSize.height * 0.30,
                                       width: fullScreenSize.width * 0.95 , height: fullScreenSize.height * 0.05)
        LabelShowDetail.text = "0"
        LabelShowDetail.lineBreakMode = .byTruncatingHead
        LabelShowDetail.font = LabelShowDetailFontAndSize
        LabelShowDetail.textAlignment = .right
        LabelShowDetail.textColor = ScreenBackgroundColor
        LabelShowDetail.backgroundColor = ButtonFrontColor2
        LabelShowDetail.layer.cornerRadius = 5
        LabelShowDetail.clipsToBounds = true
        self.view.addSubview(LabelShowDetail)


        //MARK: Gesture

        GestureSwipeRight = UISwipeGestureRecognizer(target: self, action: #selector(SwipeToDel))
        GestureSwipeRight.direction = .right
        LabelShow.isUserInteractionEnabled = true
        LabelShow.addGestureRecognizer(GestureSwipeRight)


        //MARK: Set Tag

        ButtonNumber0.tag = 0
        ButtonNumber1.tag = 1
        ButtonNumber2.tag = 2
        ButtonNumber3.tag = 3
        ButtonNumber4.tag = 4
        ButtonNumber5.tag = 5
        ButtonNumber6.tag = 6
        ButtonNumber7.tag = 7
        ButtonNumber8.tag = 8
        ButtonNumber9.tag = 9
        ButtonPoint.tag = 10

        ButtonClearnAll.tag = 11
        ButtonPosNeg.tag = 12
        ButtonPercent.tag = 13
        ButtonDivision.tag = 14
        ButtonMultiplication.tag = 15
        ButtonSubtraction.tag = 16
        ButtonAddition.tag = 17
        ButtonEqual.tag = 18
        ButtonDel.tag = 19

        //MARK: ButtonSound
        let path = Bundle.main.path(forResource: "ButtonSound2", ofType: "wav")
        do {
            buttonSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
        } catch _ {
            buttonSound = nil
        }



        // MARK: ButtonActions

        ButtonNumber0.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonNumber1.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonNumber2.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonNumber3.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonNumber4.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonNumber5.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonNumber6.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonNumber7.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonNumber8.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonNumber9.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonClearnAll.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonPosNeg.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonPercent.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonAddition.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonSubtraction.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonMultiplication.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonDivision.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonPoint.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonEqual.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonDel.addTarget(self, action: #selector(hitMe(_:)), for: .touchDown)
        ButtonSetup.addTarget(self, action: #selector(goToSwitchPage), for: .touchDown)
        ButtonHistory.addTarget(self, action: #selector(goToHistoryPage), for: .touchDown)


        checkACbutton()
    }

    override func viewDidAppear(_ animated: Bool) {

        if fullScreenSize.width <= 320 {
            LabelFontAndSize = UIFont(name: "HelveticaNeue-Thin", size: 80)
            LabelShowDetailFontAndSize = UIFont(name:  "HelveticaNeue-Thin", size: 25)
        }else if fullScreenSize.width >= 321 && fullScreenSize.width <= 375 {
            LabelFontAndSize = UIFont(name: "HelveticaNeue-Thin", size: 90)
            LabelShowDetailFontAndSize = UIFont(name:  "HelveticaNeue-Thin", size: 30)

        }else if fullScreenSize.width >= 376 && fullScreenSize.width <= 621 {
            LabelFontAndSize = UIFont(name: "HelveticaNeue-Thin", size: 100)
            LabelShowDetailFontAndSize = UIFont(name:  "HelveticaNeue-Thin", size: 35)
        }else if fullScreenSize.width > 622 {
            LabelFontAndSize = UIFont(name: "HelveticaNeue-Thin", size: 110)
            LabelShowDetailFontAndSize = UIFont(name:  "HelveticaNeue-Thin", size: 40)
        }else {
            LabelFontAndSize = UIFont(name: "HelveticaNeue-Thin", size: 80)
            LabelShowDetailFontAndSize = UIFont(name:  "HelveticaNeue-Thin", size: 25)
        }
    }




    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func hitMe(_ button:UIButton){
        let SendTag = Functions()
        let showNumber  = SendTag.GetActionFromInterface(ButtonSend: button.tag)


        LabelShow.text = showNumber.numberOnLabeal
        LabelShowDetail.text = showNumber.numberOnLabelDetail

        checkACbutton()
        playsound()

    }

    func SwipeToDel(){
        
        let SendTag = Functions()
        let showNumber  = SendTag.GetActionFromInterface(ButtonSend: 19)
        LabelShow.text = showNumber.numberOnLabeal
        LabelShowDetail.text = showNumber.numberOnLabelDetail


    }
    
    
    
    func goToSwitchPage() {
        self.present(StyleSelection(), animated: true, completion: nil)
    }

    func goToHistoryPage() {

        self.present(HistoryPage(), animated: true, completion: nil)
    }

    func checkACbutton(){
        
        
        if LabelShow.text == "0"{
            ButtonClearnAll.setImage(UIImage(named:"ButtonCleanAll_normal"), for: .normal)
            ButtonClearnAll.setImage(UIImage(named:"ButtonCleanAll_highlighted"), for: .highlighted)
        }else{
            ButtonClearnAll.setImage(UIImage(named:"ButtonClean_normal"), for: .normal)
            ButtonClearnAll.setImage(UIImage(named:"ButtonClean_highlighted"), for: .highlighted)
        }
        
        
    }

    func playsound(){
        buttonSound?.stop()
        buttonSound?.currentTime = 0.0
        buttonSound?.play()
    }
    
    
    
    
    
    
    
}

