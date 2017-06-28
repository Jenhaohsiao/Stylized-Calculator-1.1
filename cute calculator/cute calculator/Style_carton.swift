//
//  Style_carton.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-05.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import UIKit
import AVFoundation

class Style_carton: UIViewController {

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
    let Interface1 = UIButton(type: .custom)

    let LabelShow = UILabel()
    let LabelShowDetail = UILabel()

    var GestureSwipeRight = UISwipeGestureRecognizer()


    let fullScreenSize = UIScreen.main.bounds.size

    let ButtonBackGroundColor1 = UIColor.init(red: 0.8157, green: 0.8157, blue: 0.8157, alpha: 1.0)
    let ButtonBackGroundColor2 = UIColor.init(red: 0.8627, green: 0.8627, blue: 0.8627, alpha: 1.0)
    let ButtonBackGroundColor3 = UIColor.init(red: 0.9647, green: 0.5294, blue: 0.1725, alpha: 1.0)

    let ButtonFrontColor1 = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    let ButtonFrontColor2 = UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    let ScreenBackgroundColor = UIColor.init(red: 0.5882, green: 0.0784, blue: 0.0784, alpha: 1.0)
    let ButtonBorderWidth : CGFloat = 5
    let ButtonCornerRadius: CGFloat = 20
    let ButtonBorderColor = UIColor.darkGray.cgColor
    var LabelFontAndSize = UIFont(name: "Calculator", size: 80)
    var LabelShowDetailFontAndSize = UIFont(name:  "Calculator", size: 30)

    var gradientLayer: CAGradientLayer!

    var buttonSound:AVAudioPlayer?


    override func viewDidLoad() {
        super.viewDidLoad()

        //Background

        let codeImage = UIImage(named: "Style02-carton_carton_background2")
        let codeImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        codeImageView.image = codeImage
        codeImageView.contentMode = .scaleAspectFit
        self.view.addSubview(codeImageView)

        //MARK: Set ButtonNumber 0
        ButtonNumber0.frame = CGRect(x: fullScreenSize.width * 0.02, y: fullScreenSize.height * 0.85,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonNumber0.isEnabled = true
        ButtonNumber0.setImage(UIImage(named:"Style02-carton_Button0_normal"), for: .normal)
        ButtonNumber0.setImage(UIImage(named:"Style02-carton_Button0_highlighted"), for: .highlighted)


        self.view.addSubview(ButtonNumber0)

        //MARK: Set ButtonNumber ->
        ButtonDel.frame = CGRect(x: fullScreenSize.width * 0.26, y: fullScreenSize.height * 0.85,
                                 width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonDel.isEnabled = true
        ButtonDel.setImage(UIImage(named:"Style02-carton_ButtonDel_normal"), for: .normal)
        ButtonDel.setImage(UIImage(named:"Style02-carton_ButtonDel_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonDel)


        //MARK: Set ButtonNumber .
        ButtonPoint.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.85,
                                   width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonPoint.isEnabled = true
        ButtonPoint.setImage(UIImage(named:"Style02-carton_ButtonPoint_normal"), for: .normal)
        ButtonPoint.setImage(UIImage(named:"Style02-carton_ButtonPoint_highlighted"), for: .highlighted)
        self.view.addSubview(ButtonPoint)

        //MARK: Set ButtonNumber =
        ButtonEqual.frame = CGRect(x: fullScreenSize.width * 0.74, y: fullScreenSize.height * 0.85,
                                   width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonEqual.isEnabled = true
        ButtonEqual.setImage(UIImage(named:"Style02-carton_ButtonEqual_normal"), for: .normal)
        ButtonEqual.setImage(UIImage(named:"Style02-carton_ButtonEqual_highlighted"), for: .highlighted)
        self.view.addSubview(ButtonEqual)


        //MARK: Set ButtonNumber 1
        ButtonNumber1.frame = CGRect(x: fullScreenSize.width * 0.02, y: fullScreenSize.height * 0.73125,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonNumber1.isEnabled = true
        ButtonNumber1.setImage(UIImage(named:"Style02-carton_Button1_normal"), for: .normal)
        ButtonNumber1.setImage(UIImage(named:"Style02-carton_Button1_highlighted"), for: .highlighted)


        self.view.addSubview(ButtonNumber1)


        //MARK: Set ButtonNumber 2
        ButtonNumber2.frame = CGRect(x: fullScreenSize.width * 0.26, y: fullScreenSize.height * 0.73125,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonNumber2.isEnabled = true
        ButtonNumber2.setImage(UIImage(named:"Style02-carton_Button2_normal"), for: .normal)
        ButtonNumber2.setImage(UIImage(named:"Style02-carton_Button2_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber2)

        //MARK: Set ButtonNumber 3
        ButtonNumber3.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.73125,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonNumber3.isEnabled = true
        ButtonNumber3.setImage(UIImage(named:"Style02-carton_Button3_normal"), for: .normal)
        ButtonNumber3.setImage(UIImage(named:"Style02-carton_Button3_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber3)

        //MARK: Set ButtonNumber +
        ButtonAddition.frame = CGRect(x: fullScreenSize.width * 0.74, y: fullScreenSize.height * 0.73125,
                                      width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonAddition.isEnabled = true
        ButtonAddition.setImage(UIImage(named:"Style02-carton_ButtonAdd_normal"), for: .normal)
        ButtonAddition.setImage(UIImage(named:"Style02-carton_ButtonAdd_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonAddition)


        //MARK: Set ButtonNumber 4
        ButtonNumber4.frame = CGRect(x: fullScreenSize.width * 0.02, y: fullScreenSize.height * 0.6125,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonNumber4.isEnabled = true
        ButtonNumber4.setImage(UIImage(named:"Style02-carton_Button4_normal"), for: .normal)
        ButtonNumber4.setImage(UIImage(named:"Style02-carton_Button4_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber4)


        //MARK: Set ButtonNumber 5
        ButtonNumber5.frame = CGRect(x: fullScreenSize.width * 0.26, y: fullScreenSize.height * 0.6125,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonNumber5.isEnabled = true
        ButtonNumber5.setImage(UIImage(named:"Style02-carton_Button5_normal"), for: .normal)
        ButtonNumber5.setImage(UIImage(named:"Style02-carton_Button5_highlighted"), for: .highlighted)


        self.view.addSubview(ButtonNumber5)

        //MARK: Set ButtonNumber 6
        ButtonNumber6.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.6125,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonNumber6.isEnabled = true
        ButtonNumber6.setImage(UIImage(named:"Style02-carton_Button6_normal"), for: .normal)
        ButtonNumber6.setImage(UIImage(named:"Style02-carton_Button6_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber6)

        //MARK: Set ButtonNumber --
        ButtonSubtraction.frame = CGRect(x: fullScreenSize.width * 0.74, y: fullScreenSize.height * 0.6125,
                                         width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonSubtraction.isEnabled = true
        ButtonSubtraction.setImage(UIImage(named:"Style02-carton_ButtonSub_normal"), for: .normal)
        ButtonSubtraction.setImage(UIImage(named:"Style02-carton_ButtonSub_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonSubtraction)

        //MARK: Set ButtonNumber 7
        ButtonNumber7.frame = CGRect(x: fullScreenSize.width * 0.02, y: fullScreenSize.height * 0.49375,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonNumber7.isEnabled = true
        ButtonNumber7.setImage(UIImage(named:"Style02-carton_Button7_normal"), for: .normal)
        ButtonNumber7.setImage(UIImage(named:"Style02-carton_Button7_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber7)


        //MARK: Set ButtonNumber 8
        ButtonNumber8.frame = CGRect(x: fullScreenSize.width * 0.26, y: fullScreenSize.height * 0.49375,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonNumber8.isEnabled = true
        ButtonNumber8.setImage(UIImage(named:"Style02-carton_Button8_normal"), for: .normal)
        ButtonNumber8.setImage(UIImage(named:"Style02-carton_Button8_highlighted"), for: .highlighted)


        self.view.addSubview(ButtonNumber8)

        //MARK: Set ButtonNumber 9
        ButtonNumber9.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.49375,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonNumber9.isEnabled = true
        ButtonNumber9.setImage(UIImage(named:"Style02-carton_Button9_normal"), for: .normal)
        ButtonNumber9.setImage(UIImage(named:"Style02-carton_Button9_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonNumber9)

        //MARK: Set ButtonNumber x
        ButtonMultiplication.frame = CGRect(x: fullScreenSize.width * 0.74, y: fullScreenSize.height * 0.49375,
                                            width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonMultiplication.isEnabled = true
        ButtonMultiplication.setImage(UIImage(named:"Style02-carton_ButtonMultip_normal"), for: .normal)
        ButtonMultiplication.setImage(UIImage(named:"Style02-carton_ButtonMultip_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonMultiplication)

        //MARK: Set ButtonNumber C
        ButtonClearnAll.frame = CGRect(x: fullScreenSize.width * 0.02, y: fullScreenSize.height * 0.375,
                                       width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonClearnAll.isEnabled = true
        ButtonClearnAll.setImage(UIImage(named:"Style02-carton_ButtonAC_normal"), for: .normal)
        ButtonClearnAll.setImage(UIImage(named:"Style02-carton_ButtonAC_highlighted"), for: .highlighted)
        self.view.addSubview(ButtonClearnAll)


        //MARK: Set ButtonNumber ±
        ButtonPosNeg.frame = CGRect(x: fullScreenSize.width * 0.26, y: fullScreenSize.height * 0.375,
                                    width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonPosNeg.isEnabled = true
        ButtonPosNeg.setImage(UIImage(named:"Style02-carton_ButtonPosNeg_normal"), for: .normal)
        ButtonPosNeg.setImage(UIImage(named:"Style02-carton_ButtonPosNeg_highlighted"), for: .highlighted)

        self.view.addSubview(ButtonPosNeg)

        //MARK: Set ButtonNumber %
        ButtonPercent.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.375,
                                     width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonPercent.isEnabled = true
        ButtonPercent.setImage(UIImage(named:"Style02-carton_ButtonPercent_normal"), for: .normal)
        ButtonPercent.setImage(UIImage(named:"Style02-carton_ButtonPercent_highlighted"), for: .highlighted)
        self.view.addSubview(ButtonPercent)

        //MARK: Set ButtonNumber ÷
        ButtonDivision.frame = CGRect(x: fullScreenSize.width * 0.74, y: fullScreenSize.height * 0.375,
                                      width: fullScreenSize.width * 0.24 , height: fullScreenSize.height * 0.132)
        ButtonDivision.isEnabled = true
        ButtonDivision.setImage(UIImage(named:"Style02-carton_ButtonDivision_normal"), for: .normal)
        ButtonDivision.setImage(UIImage(named:"Style02-carton_ButtonDivision_highlighted"), for: .highlighted)
        self.view.addSubview(ButtonDivision)

        //MARK: SetUP Icon & interface
        ButtonSetup.frame = CGRect(x: fullScreenSize.width * 0.055, y: fullScreenSize.height * 0.045,
                                   width: 30, height: 30)
        ButtonSetup.isEnabled = true
        ButtonSetup.setImage(UIImage(named:"Style02-carton_Icon-Setup_normal"), for: .normal)
        ButtonSetup.setImage(UIImage(named:"Style02-carton_Icon-Setup_highlighted"), for: .highlighted)
        ButtonSetup.layer.borderColor = ButtonBorderColor
        ButtonSetup.layer.zPosition = 3
        self.view.addSubview(ButtonSetup)

        Interface1.frame = CGRect(x: fullScreenSize.width * 0.65, y: fullScreenSize.height * 0.047,
        width: fullScreenSize.width * 0.27 , height: fullScreenSize.height * 0.05)
        Interface1.isEnabled = true
        Interface1.setImage(UIImage(named:"interface1"), for: .normal)
        Interface1.layer.zPosition = 4
        self.view.addSubview(Interface1)



        //MARK: History

        ButtonHistory.frame = CGRect(x: fullScreenSize.width * 0.205, y: fullScreenSize.height * 0.045,
                                     width: 30, height: 30)
        ButtonHistory.setImage(UIImage(named:"Style02-carton_Icon-History_normal"), for: .normal)
        ButtonHistory.setImage(UIImage(named:"Style02-carton_Icon-History_highlighted"), for: .highlighted)
        ButtonHistory.layer.borderColor = ButtonBorderColor
        ButtonHistory.layer.zPosition = 3
        self.view.addSubview(ButtonHistory)


        //MARK: Set Label show

        LabelShow.frame = CGRect(x: fullScreenSize.width * 0.025, y: fullScreenSize.height * 0.10,
                                 width: fullScreenSize.width * 0.90 , height: fullScreenSize.height * 0.18)
        LabelShow.text = "0"
        LabelShow.center = CGPoint (x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.20)
        LabelShow.numberOfLines = 1
        LabelShow.font = LabelFontAndSize
        //        LabelShow.lineBreakMode = .byWordWrapping
        LabelShow.minimumScaleFactor = 0.01
        LabelShow.adjustsFontSizeToFitWidth = true
        LabelShow.textAlignment = .right
        LabelShow.textColor = ButtonFrontColor2
        LabelShow.backgroundColor = ScreenBackgroundColor
        LabelShow.layer.cornerRadius = 15
        LabelShow.clipsToBounds = true
        LabelShow.layer.zPosition = 3
        self.view.addSubview(LabelShow)


        LabelShowDetail.frame = CGRect(x: fullScreenSize.width * 0.025, y: fullScreenSize.height * 0.30,
                                       width: fullScreenSize.width * 0.90 , height: fullScreenSize.height * 0.05)
        LabelShowDetail.text = "0"
        LabelShowDetail.center = CGPoint (x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.34)
        LabelShowDetail.lineBreakMode = .byTruncatingHead
        LabelShowDetail.font = LabelShowDetailFontAndSize
        LabelShowDetail.textAlignment = .right
        LabelShowDetail.textColor = ScreenBackgroundColor
        LabelShowDetail.backgroundColor = UIColor.clear
        

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
            LabelFontAndSize = UIFont(name: "Calculator", size: 80)
            LabelShowDetailFontAndSize = UIFont(name:  "Calculator", size: 30)
        }else if fullScreenSize.width >= 321 && fullScreenSize.width <= 375 {
            LabelFontAndSize = UIFont(name: "Calculator", size: 90)
            LabelShowDetailFontAndSize = UIFont(name:  "Calculator", size: 35)

        }else if fullScreenSize.width >= 376 && fullScreenSize.width <= 621 {
            LabelFontAndSize = UIFont(name: "Calculator", size: 100)
            LabelShowDetailFontAndSize = UIFont(name:  "Calculator", size: 40)
        }else if fullScreenSize.width > 622 {
            LabelFontAndSize = UIFont(name: "Calculator", size: 110)
            LabelShowDetailFontAndSize = UIFont(name:  "Calculator", size: 45)
        }else {
            LabelFontAndSize = UIFont(name: "Calculator", size: 80)
            LabelShowDetailFontAndSize = UIFont(name:  "Calculator", size: 30)
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
            ButtonClearnAll.setImage(UIImage(named:"Style02-carton_ButtonAC_normal"), for: .normal)
            ButtonClearnAll.setImage(UIImage(named:"Style02-carton_ButtonAC_highlighted"), for: .highlighted)
        }else{
            ButtonClearnAll.setImage(UIImage(named:"Style02-carton_ButtonC_normal"), for: .normal)
            ButtonClearnAll.setImage(UIImage(named:"Style02-carton_ButtonC_highlighted"), for: .highlighted)
        }
        
        
    }
    
    func playsound(){
        buttonSound?.stop()
        buttonSound?.currentTime = 0.0
        buttonSound?.play()
    }
    

    
    
}

