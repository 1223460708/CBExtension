//
//  UIAlertController+Extension.swift
//  laifuPos
//
//  Created by 炳神 on 2017/11/27.
//  Copyright © 2017年 CBcc. All rights reserved.
//
import UIKit
extension UIAlertController {
    class func cb_alertController(_ viewcontroller:UIViewController,_ actionNameArray:[String],_ title:String,_ message:String,_ callBack:@escaping (_ name:String,_ index:NSInteger)->Void){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for i in 0..<actionNameArray.count {
            alert.addAction(UIAlertAction(title: actionNameArray[i], style: .default, handler: { (action) in
                callBack(actionNameArray[i],i)
            }))
        }
        viewcontroller.present(alert, animated: true, completion: nil)
    }
    
    
}

