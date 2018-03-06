//
//  CBBaseDefine.swift
//  CBA
//
//  Created by 炳神 on 2017/11/9.
//  Copyright © 2017年 炳神. All rights reserved.
//

import Foundation
import UIKit

//-------------尺寸-------------
let screen_width = UIScreen.main.bounds.size.width
let screen_height = UIScreen.main.bounds.size.height
let naviHeight : CGFloat = 64.0
let tabBarHeight : CGFloat = 49.0
func widthRatio(_ width:CGFloat)->CGFloat{
    return width * UIScreen.main.bounds.size.width / 375
}
func heightRation(_ height:CGFloat)->CGFloat{
    if screen_height == 812.0 {
        return height * 1.0
    }
    return height * UIScreen.main.bounds.size.height / 667
}
let SafeAreaBottomHeight : CGFloat = screen_height == 812.0 ? 34.0 : 0.0
let SafeAreaTopHeight : CGFloat = screen_height == 812.0 ? 24.0 : 0.0
//-------------颜色--------------
let background_247Color = UIColor.init(valueRGB: 0xf7f7f7)
let background_255Color = UIColor.init(valueRGB: 0xffffff)
let word333Color = UIColor.init(valueRGB: 0x333333)
let word666Color = UIColor.init(valueRGB: 0x666666)
let word999Color = UIColor.init(valueRGB: 0x999999)
let lined4Color = UIColor.init(valueRGB: 0xd4d4d4)

let mainRedColor = UIColor.init(valueRGB: 0xCD3830)
//--------------设置字体大小----------
func cb_font(_ f:CGFloat)->UIFont{
    return UIFont.systemFont(ofSize: f)
}
func boldFont(_ f:CGFloat)->UIFont{
    return UIFont.boldSystemFont(ofSize: f)
}

let CBKeyWindow = UIApplication.shared.windows.first
let textFiledImgViewWidth = 30

//------------app通用----------
//logo
let logoImg = #imageLiteral(resourceName: "LOGO")
//app名字
//let appName = "米兜兜"
let appName = Bundle.main.infoDictionary!["CFBundleDisplayName"] as! String
//5
let IPHONE_5_width : CGFloat = 320.0
//6
let IPHONE_6_7_8_width : CGFloat = 375.0
//6p
let IPHONE_6p_7p_8p_width : CGFloat = 414.0
//x
let IPHONE_x_height : CGFloat = 812.0

//获取手机号
//func getPhone()->String {
//    var phone = ""
//    let mo = CBUserPwdViewModel()
//    mo.readData()
//    if mo.modelArray.count > 0 {
//        phone = mo.modelArray[0].userAccount!
//    }
//    return phone
//}
////获取token
//func getToken()->String {
//    guard let token = CBLoginVM().readToken().token else {
//        return ""
//    }
//    return token
//}

