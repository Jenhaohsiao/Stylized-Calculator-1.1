////
////  Style01Classicbycode.swift
////  cute calculator
////
////  Created by HSIAO JENHAO on 2017-05-30.
////  Copyright © 2017 HSIAO JENHAO. All rights reserved.
////
////
//
//import UIKit
//
//class Style01Classicbycode: UIViewController {
//
//
//    let ButtonNumber1 = UIButton(type: .custom)        //Create Button
//    let ButtonNumber2 = UIButton(type: .custom)
//    let ButtonNumber3 = UIButton(type: .custom)
//    let ButtonNumber4 = UIButton(type: .custom)
//    let ButtonNumber5 = UIButton(type: .custom)
//    let ButtonNumber6 = UIButton(type: .custom)
//    let ButtonNumber7 = UIButton(type: .custom)
//    let ButtonNumber8 = UIButton(type: .custom)
//    let ButtonNumber9 = UIButton(type: .custom)
//    let ButtonNumber0 = UIButton(type: .custom)
//    let ButtonClearrAll = UIButton(type: .custom)
//    let ButtonPosNeg = UIButton(type: .custom)
//    let ButtonPercent = UIButton(type: .custom)
//    let ButtonAddition = UIButton(type: .custom)
//    let ButtonSubtraction = UIButton(type: .custom)
//    let ButtonMultiplication = UIButton(type: .custom)
//    let ButtonDivision = UIButton(type: .custom)
//    let ButtonPoint = UIButton(type: .custom)
//    let ButtonEqual = UIButton(type: .custom)
//    let ButtonDel = UIButton(type: .custom)
//    let ButtonSetup = UIButton(type: .custom)
//    let ButtonHistory = UIButton(type: .custom)
//
//    let LabelShow = UILabel()
//    let LabelShowDetail = UILabel()
//
//    var GestureSwipeRight = UISwipeGestureRecognizer()
//
//
//    let fullScreenSize = UIScreen.main.bounds.size
//
//    let ButtonBackGroundColor1 = UIColor.init(red: 0.8157, green: 0.8157, blue: 0.8157, alpha: 1.0)
//    let ButtonBackGroundColor2 = UIColor.init(red: 0.8627, green: 0.8627, blue: 0.8627, alpha: 1.0)
//    let ButtonBackGroundColor3 = UIColor.init(red: 0.9647, green: 0.5294, blue: 0.1725, alpha: 1.0)
//
//    let ButtonFrontColor1 = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
//    let ButtonFrontColor2 = UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//    let ScreenBackgroundColor = UIColor.init(red: 0.1412, green: 0.1412, blue: 0.1412, alpha: 1.0)
//    let ButtonBorderWidth : CGFloat = 5
//    let ButtonCornerRadius: CGFloat = 20
//    let ButtonBorderColor = UIColor.darkGray.cgColor
//    var ButtonFontAndSize =  UIFont(name:  "HelveticaNeue-Thin", size: 25)
//    let LabelFontAndSize = UIFont(name:  "HelveticaNeue-Thin", size: 80)
//    let LabelShowDetailFontAndSize = UIFont(name:  "HelveticaNeue-Thin", size: 25)
//
//    var gradientLayer: CAGradientLayer!
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        //Background
//
//        gradientLayer = CAGradientLayer()
//        gradientLayer.frame = self.view.bounds
//        gradientLayer.colors = [UIColor.gray.cgColor, UIColor.black.cgColor]
//        self.view.layer.addSublayer(gradientLayer)
//
//        //        self.view.backgroundColor = ScreenBackgroundColor
//        print("Screen:",(fullScreenSize.width),(fullScreenSize.height))
//
//        if fullScreenSize.width == 320 {  // iphone 5 size
//            ButtonFontAndSize =  UIFont(name:  "HelveticaNeue-Thin", size: 30)
//        }else if fullScreenSize.width >= 320 && fullScreenSize.width <= 375 { // iphone 6, 7 size
//            ButtonFontAndSize =  UIFont(name:  "HelveticaNeue-Thin", size: 35)
//        }else if fullScreenSize.width == 414 {
//            ButtonFontAndSize =  UIFont(name:  "HelveticaNeue-Thin", size: 40) // iphone 6,7 Plus size
//        }else if fullScreenSize.width >= 415 {
//            ButtonFontAndSize =  UIFont(name:  "HelveticaNeue-Thin", size: 45) // ipad size
//        }
//
//
//        //MARK: Set Button
//
//        //MARK: Set ButtonNumber 0
//        ButtonNumber0.frame = CGRect(x: fullScreenSize.width * 0.0, y: fullScreenSize.height * 0.875,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonNumber0.setTitle("0", for: .normal)
//        ButtonNumber0.titleLabel?.font = ButtonFontAndSize
//
//        ButtonNumber0.setTitleColor(ButtonFrontColor1, for: .normal)
//
//        ButtonNumber0.isEnabled = true
//        ButtonNumber0.backgroundColor = ButtonBackGroundColor2
//        ButtonNumber0.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonNumber0.layer.borderColor = ButtonBorderColor
//        ButtonNumber0.layer.borderWidth = ButtonBorderWidth
//        ButtonNumber0.layer.cornerRadius = ButtonCornerRadius
//
//
//        self.view.addSubview(ButtonNumber0)
//
//        //MARK: Set ButtonNumber ->
//        ButtonDel.frame = CGRect(x: fullScreenSize.width * 0.25, y: fullScreenSize.height * 0.875,
//                                 width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonDel.setTitle("del", for: .normal)
//        ButtonDel.titleLabel?.font = ButtonFontAndSize
//        ButtonDel.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonDel.isEnabled = true
//        ButtonDel.backgroundColor = ButtonBackGroundColor2
//        ButtonDel.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonDel.layer.borderColor = ButtonBorderColor
//        ButtonDel.layer.borderWidth = ButtonBorderWidth
//        ButtonDel.layer.cornerRadius = ButtonCornerRadius
//
//
//        self.view.addSubview(ButtonDel)
//
//
//        //MARK: Set ButtonNumber .
//        ButtonPoint.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.875,
//                                   width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonPoint.setTitle(".", for: .normal)
//        ButtonPoint.titleLabel?.font = ButtonFontAndSize
//
//        ButtonPoint.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonPoint.isEnabled = true
//        ButtonPoint.backgroundColor = ButtonBackGroundColor2
//        ButtonPoint.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonPoint.layer.borderColor = ButtonBorderColor
//        ButtonPoint.layer.borderWidth = ButtonBorderWidth
//        ButtonPoint.layer.cornerRadius = ButtonCornerRadius
//
//        self.view.addSubview(ButtonPoint)
//
//        //MARK: Set ButtonNumber =
//        ButtonEqual.frame = CGRect(x: fullScreenSize.width * 0.75, y: fullScreenSize.height * 0.875,
//                                   width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonEqual.setTitle("=", for: .normal)
//        ButtonEqual.titleLabel?.font = ButtonFontAndSize
//
//        ButtonEqual.setTitleColor(ButtonFrontColor2, for: .normal)
//        ButtonEqual.isEnabled = true
//        ButtonEqual.backgroundColor = ButtonBackGroundColor3
//        ButtonEqual.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonEqual.layer.borderColor = ButtonBorderColor
//        ButtonEqual.layer.borderWidth = ButtonBorderWidth
//        ButtonEqual.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonEqual)
//
//        //MARK: Set ButtonNumber 1
//        ButtonNumber1.frame = CGRect(x: fullScreenSize.width * 0.0, y: fullScreenSize.height * 0.75,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonNumber1.setTitle("1", for: .normal)
//        ButtonNumber1.titleLabel?.font = ButtonFontAndSize
//
//        ButtonNumber1.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonNumber1.isEnabled = true
//        ButtonNumber1.backgroundColor = ButtonBackGroundColor2
//        ButtonNumber1.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonNumber1.layer.borderColor = ButtonBorderColor
//        ButtonNumber1.layer.borderWidth = ButtonBorderWidth
//        ButtonNumber1.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonNumber1)
//
//
//        //MARK: Set ButtonNumber 2
//        ButtonNumber2.frame = CGRect(x: fullScreenSize.width * 0.25, y: fullScreenSize.height * 0.75,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonNumber2.setTitle("2", for: .normal)
//        ButtonNumber2.titleLabel?.font = ButtonFontAndSize
//
//        ButtonNumber2.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonNumber2.isEnabled = true
//        ButtonNumber2.backgroundColor = ButtonBackGroundColor2
//        ButtonNumber2.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonNumber2.layer.borderColor = ButtonBorderColor
//        ButtonNumber2.layer.borderWidth = ButtonBorderWidth
//        ButtonNumber2.layer.cornerRadius = ButtonCornerRadius
//
//        self.view.addSubview(ButtonNumber2)
//
//        //MARK: Set ButtonNumber 3
//        ButtonNumber3.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.75,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonNumber3.setTitle("3", for: .normal)
//        ButtonNumber3.titleLabel?.font = ButtonFontAndSize
//
//        ButtonNumber3.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonNumber3.isEnabled = true
//        ButtonNumber3.backgroundColor = ButtonBackGroundColor2
//        ButtonNumber3.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonNumber3.layer.borderColor = ButtonBorderColor
//        ButtonNumber3.layer.borderWidth = ButtonBorderWidth
//        ButtonNumber3.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonNumber3)
//
//        //MARK: Set ButtonNumber +
//        ButtonAddition.frame = CGRect(x: fullScreenSize.width * 0.75, y: fullScreenSize.height * 0.75,
//                                      width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonAddition.setTitle("+", for: .normal)
//        ButtonAddition.titleLabel?.font = ButtonFontAndSize
//
//        ButtonAddition.setTitleColor(ButtonFrontColor2, for: .normal)
//        ButtonAddition.isEnabled = true
//        ButtonAddition.backgroundColor = ButtonBackGroundColor3
//        ButtonAddition.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonAddition.layer.borderColor = ButtonBorderColor
//        ButtonAddition.layer.borderWidth = ButtonBorderWidth
//        ButtonAddition.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonAddition)
//
//
//        //MARK: Set ButtonNumber 4
//        ButtonNumber4.frame = CGRect(x: fullScreenSize.width * 0.0, y: fullScreenSize.height * 0.625,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonNumber4.setTitle("4", for: .normal)
//        ButtonNumber4.titleLabel?.font = ButtonFontAndSize
//
//        ButtonNumber4.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonNumber4.isEnabled = true
//        ButtonNumber4.backgroundColor = ButtonBackGroundColor2
//        ButtonNumber4.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonNumber4.layer.borderColor = ButtonBorderColor
//        ButtonNumber4.layer.borderWidth = ButtonBorderWidth
//        ButtonNumber4.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonNumber4)
//
//
//        //MARK: Set ButtonNumber 5
//        ButtonNumber5.frame = CGRect(x: fullScreenSize.width * 0.25, y: fullScreenSize.height * 0.625,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonNumber5.setTitle("5", for: .normal)
//        ButtonNumber5.titleLabel?.font = ButtonFontAndSize
//
//        ButtonNumber5.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonNumber5.isEnabled = true
//        ButtonNumber5.backgroundColor = ButtonBackGroundColor2
//        ButtonNumber5.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonNumber5.layer.borderColor = ButtonBorderColor
//        ButtonNumber5.layer.borderWidth = ButtonBorderWidth
//        ButtonNumber5.layer.cornerRadius = ButtonCornerRadius
//
//        self.view.addSubview(ButtonNumber5)
//
//        //MARK: Set ButtonNumber 6
//        ButtonNumber6.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.625,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonNumber6.setTitle("6", for: .normal)
//        ButtonNumber6.titleLabel?.font = ButtonFontAndSize
//
//        ButtonNumber6.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonNumber6.isEnabled = true
//        ButtonNumber6.backgroundColor = ButtonBackGroundColor2
//        ButtonNumber6.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonNumber6.layer.borderColor = ButtonBorderColor
//        ButtonNumber6.layer.borderWidth = ButtonBorderWidth
//        ButtonNumber6.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonNumber6)
//
//        //MARK: Set ButtonNumber --
//        ButtonSubtraction.frame = CGRect(x: fullScreenSize.width * 0.75, y: fullScreenSize.height * 0.625,
//                                         width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonSubtraction.setTitle("-", for: .normal)
//        ButtonSubtraction.titleLabel?.font = ButtonFontAndSize
//
//        ButtonSubtraction.setTitleColor(ButtonFrontColor2, for: .normal)
//        ButtonSubtraction.isEnabled = true
//        ButtonSubtraction.backgroundColor = ButtonBackGroundColor3
//        ButtonSubtraction.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonSubtraction.layer.borderColor = ButtonBorderColor
//        ButtonSubtraction.layer.borderWidth = ButtonBorderWidth
//        ButtonSubtraction.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonSubtraction)
//
//        //MARK: Set ButtonNumber 7
//        ButtonNumber7.frame = CGRect(x: fullScreenSize.width * 0.0, y: fullScreenSize.height * 0.5,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonNumber7.setTitle("7", for: .normal)
//        ButtonNumber7.titleLabel?.font = ButtonFontAndSize
//
//        ButtonNumber7.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonNumber7.isEnabled = true
//        ButtonNumber7.backgroundColor = ButtonBackGroundColor2
//        ButtonNumber7.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonNumber7.layer.borderColor = ButtonBorderColor
//        ButtonNumber7.layer.borderWidth = ButtonBorderWidth
//        ButtonNumber7.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonNumber7)
//
//
//        //MARK: Set ButtonNumber 8
//        ButtonNumber8.frame = CGRect(x: fullScreenSize.width * 0.25, y: fullScreenSize.height * 0.5,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonNumber8.setTitle("8", for: .normal)
//        ButtonNumber8.titleLabel?.font = ButtonFontAndSize
//
//        ButtonNumber8.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonNumber8.isEnabled = true
//        ButtonNumber8.backgroundColor = ButtonBackGroundColor2
//        ButtonNumber8.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonNumber8.layer.borderColor = ButtonBorderColor
//        ButtonNumber8.layer.borderWidth = ButtonBorderWidth
//        ButtonNumber8.layer.cornerRadius = ButtonCornerRadius
//
//        self.view.addSubview(ButtonNumber8)
//
//        //MARK: Set ButtonNumber 9
//        ButtonNumber9.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.5,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonNumber9.setTitle("9", for: .normal)
//        ButtonNumber9.titleLabel?.font = ButtonFontAndSize
//
//        ButtonNumber9.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonNumber9.isEnabled = true
//        ButtonNumber9.backgroundColor = ButtonBackGroundColor2
//        ButtonNumber9.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonNumber9.layer.borderColor = ButtonBorderColor
//        ButtonNumber9.layer.borderWidth = ButtonBorderWidth
//        ButtonNumber9.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonNumber9)
//
//        //MARK: Set ButtonNumber x
//        ButtonMultiplication.frame = CGRect(x: fullScreenSize.width * 0.75, y: fullScreenSize.height * 0.5,
//                                            width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonMultiplication.setTitle("x", for: .normal)
//        ButtonMultiplication.titleLabel?.font = ButtonFontAndSize
//
//        ButtonMultiplication.setTitleColor(ButtonFrontColor2, for: .normal)
//        ButtonMultiplication.isEnabled = true
//        ButtonMultiplication.backgroundColor = ButtonBackGroundColor3
//        ButtonMultiplication.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonMultiplication.layer.borderColor = ButtonBorderColor
//        ButtonMultiplication.layer.borderWidth = ButtonBorderWidth
//        ButtonMultiplication.layer.cornerRadius = ButtonCornerRadius
//
//        self.view.addSubview(ButtonMultiplication)
//
//        //MARK: Set ButtonNumber C
//        ButtonClearrAll.frame = CGRect(x: fullScreenSize.width * 0.0, y: fullScreenSize.height * 0.375,
//                                       width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonClearrAll.setTitle("C", for: .normal)
//        ButtonClearrAll.titleLabel?.font = ButtonFontAndSize
//
//        ButtonClearrAll.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonClearrAll.isEnabled = true
//        ButtonClearrAll.backgroundColor = ButtonBackGroundColor1
//        ButtonClearrAll.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonClearrAll.layer.borderColor = ButtonBorderColor
//        ButtonClearrAll.layer.borderWidth = ButtonBorderWidth
//        ButtonClearrAll.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonClearrAll)
//
//
//        //MARK: Set ButtonNumber ±
//        ButtonPosNeg.frame = CGRect(x: fullScreenSize.width * 0.25, y: fullScreenSize.height * 0.375,
//                                    width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonPosNeg.setTitle("±", for: .normal)
//        ButtonPosNeg.titleLabel?.font = ButtonFontAndSize
//
//        ButtonPosNeg.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonPosNeg.isEnabled = true
//        ButtonPosNeg.backgroundColor = ButtonBackGroundColor1
//        ButtonPosNeg.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonPosNeg.layer.borderColor = ButtonBorderColor
//        ButtonPosNeg.layer.borderWidth = ButtonBorderWidth
//        ButtonPosNeg.layer.cornerRadius = ButtonCornerRadius
//
//        self.view.addSubview(ButtonPosNeg)
//
//        //MARK: Set ButtonNumber %
//        ButtonPercent.frame = CGRect(x: fullScreenSize.width * 0.50, y: fullScreenSize.height * 0.375,
//                                     width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonPercent.setTitle("%", for: .normal)
//        ButtonPercent.titleLabel?.font = ButtonFontAndSize
//
//        ButtonPercent.setTitleColor(ButtonFrontColor1, for: .normal)
//        ButtonPercent.isEnabled = true
//        ButtonPercent.backgroundColor = ButtonBackGroundColor1
//        ButtonPercent.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonPercent.layer.borderColor = ButtonBorderColor
//        ButtonPercent.layer.borderWidth = ButtonBorderWidth
//        ButtonPercent.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonPercent)
//
//        //MARK: Set ButtonNumber ÷
//        ButtonDivision.frame = CGRect(x: fullScreenSize.width * 0.75, y: fullScreenSize.height * 0.375,
//                                      width: fullScreenSize.width * 0.25 , height: fullScreenSize.height * 0.125)
//        ButtonDivision.setTitle("÷", for: .normal)
//        ButtonDivision.titleLabel?.font = ButtonFontAndSize
//
//        ButtonDivision.setTitleColor(ButtonFrontColor2, for: .normal)
//        ButtonDivision.isEnabled = true
//        ButtonDivision.backgroundColor = ButtonBackGroundColor3
//        ButtonDivision.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonDivision.layer.borderColor = ButtonBorderColor
//        ButtonDivision.layer.borderWidth = ButtonBorderWidth
//        ButtonDivision.layer.cornerRadius = ButtonCornerRadius
//        self.view.addSubview(ButtonDivision)
//
//        //MARK: SetUP Icon
//        ButtonSetup.frame = CGRect(x: fullScreenSize.width * 0.05, y: fullScreenSize.height * 0.03,
//                                   width: 30, height: 30)
//        ButtonSetup.setImage(UIImage(named:"Gear") , for: .normal)
//        ButtonSetup.titleLabel?.font = ButtonFontAndSize
//
//        ButtonSetup.setTitleColor(ButtonFrontColor2, for: .normal)
//        ButtonSetup.isEnabled = true
//        ButtonSetup.backgroundColor = UIColor.clear
//        ButtonSetup.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonSetup.layer.borderColor = ButtonBorderColor
//        ButtonSetup.layer.zPosition = 3
//        self.view.addSubview(ButtonSetup)
//
//        //MARK: History
//
//        ButtonHistory.frame = CGRect(x: fullScreenSize.width * 0.20, y: fullScreenSize.height * 0.03,
//                                     width: 30, height: 30)
//        ButtonHistory.setImage(UIImage(named:"History") , for: .normal)
//        ButtonHistory.titleLabel?.font = ButtonFontAndSize
//
//        ButtonHistory.setTitleColor(ButtonFrontColor2, for: .normal)
//        ButtonHistory.isEnabled = true
//        ButtonHistory.backgroundColor = UIColor.clear
//        ButtonHistory.setTitleColor(UIColor.red, for: .highlighted)
//        ButtonHistory.layer.borderColor = ButtonBorderColor
//        ButtonHistory.layer.zPosition = 3
//        self.view.addSubview(ButtonHistory)
//
//
//        //MARK: Set Label show
//
//        LabelShow.frame = CGRect(x: fullScreenSize.width * 0.025, y: fullScreenSize.height * 0.08,
//                                 width: fullScreenSize.width * 0.95 , height: fullScreenSize.height * 0.18)
//        LabelShow.text = "0"
//        LabelShow.numberOfLines = 1
//        LabelShow.font = LabelFontAndSize
//        //        LabelShow.lineBreakMode = .byWordWrapping
//        LabelShow.minimumScaleFactor = 0.5
//        LabelShow.adjustsFontSizeToFitWidth = true
//        LabelShow.textAlignment = .right
//        LabelShow.textColor = ButtonFrontColor2
//        LabelShow.backgroundColor = ScreenBackgroundColor
//        LabelShow.layer.cornerRadius = 15
//        LabelShow.clipsToBounds = true
//        LabelShow.layer.zPosition = 3
//        self.view.addSubview(LabelShow)
//
//
//        LabelShowDetail.frame = CGRect(x: fullScreenSize.width * 0.025, y: fullScreenSize.height * 0.28,
//                                       width: fullScreenSize.width * 0.95 , height: fullScreenSize.height * 0.05)
//        LabelShowDetail.text = "0"
//        LabelShowDetail.lineBreakMode = .byTruncatingHead
//        LabelShowDetail.font = LabelShowDetailFontAndSize
//        LabelShowDetail.textAlignment = .right
//        LabelShowDetail.textColor = ScreenBackgroundColor
//        LabelShowDetail.backgroundColor = ButtonFrontColor2
//        LabelShowDetail.layer.cornerRadius = 5
//        LabelShowDetail.clipsToBounds = true
//        self.view.addSubview(LabelShowDetail)
//
//
//        //MARK: Gesture
//
//        GestureSwipeRight = UISwipeGestureRecognizer(target: self, action: #selector(SwipeToDel))
//        GestureSwipeRight.direction = .right
//        LabelShow.isUserInteractionEnabled = true
//        LabelShow.addGestureRecognizer(GestureSwipeRight)
//
//
//        //MARK: Set Tag
//
//        ButtonNumber0.tag = 0
//        ButtonNumber1.tag = 1
//        ButtonNumber2.tag = 2
//        ButtonNumber3.tag = 3
//        ButtonNumber4.tag = 4
//        ButtonNumber5.tag = 5
//        ButtonNumber6.tag = 6
//        ButtonNumber7.tag = 7
//        ButtonNumber8.tag = 8
//        ButtonNumber9.tag = 9
//        ButtonClearrAll.tag = 11
//        ButtonPosNeg.tag = 12
//        ButtonPercent.tag = 13
//        ButtonDivision.tag = 14
//        ButtonMultiplication.tag = 15
//        ButtonSubtraction.tag = 16
//        ButtonAddition.tag = 17
//        ButtonEqual.tag = 18
//        ButtonPoint.tag = 19
//        ButtonDel.tag = 20
//
//
//
//        // MARK: ButtonActions
//
//        ButtonNumber0.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonNumber1.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonNumber2.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonNumber3.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonNumber4.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonNumber5.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonNumber6.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonNumber7.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonNumber8.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonNumber9.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonClearrAll.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonPosNeg.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonPercent.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonAddition.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonSubtraction.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonMultiplication.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonDivision.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonPoint.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonEqual.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonDel.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
//        ButtonSetup.addTarget(self, action: #selector(goToSwitchPage), for: .touchUpInside)
//
//
//
//
//        checkACbutton()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    func hitMe(_ button:UIButton){
//        let SendTag = Functions()
//        let showNumber  = SendTag.GetActionFromInterface(ButtonSend: button.tag)
//
//
//        LabelShow.text = showNumber.numberOnLabeal
//        LabelShowDetail.text = showNumber.numberOnLabelDetail
//
//        checkACbutton()
//
//    }
//
//    func SwipeToDel(){
//        
//        let SendTag = Functions()
//        let showNumber  = SendTag.GetActionFromInterface(ButtonSend: 20)
//        
//        
//        LabelShow.text = showNumber.numberOnLabeal
//        LabelShowDetail.text = showNumber.numberOnLabelDetail
//        
//        print ("Swipe to del")
//        
//    }
//    
//    
//    
//    func goToSwitchPage() {
//        self.present(SwitchPageViewController(), animated: true, completion: nil)
//    }
//    
//    func checkACbutton(){
//        
//        
//        if LabelShow.text == "0"{
//            ButtonClearrAll.setTitle("AC", for: .normal)
//        }else{
//            ButtonClearrAll.setTitle("C", for: .normal)
//        }
//        
//        
//    }
//    
//    
//    
//    
//    
//    
//    
//}
//
