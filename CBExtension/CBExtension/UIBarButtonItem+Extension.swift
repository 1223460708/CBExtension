//
//  UIBarButtonItem+Extension.swift
//  laifuWallt
//
//  Created by 炳神 on 2017/12/18.
//  Copyright © 2017年 CBcc. All rights reserved.
//

import Foundation
import UIKit
extension UIBarButtonItem {
    class func itemWithImageName(imageName:String,target:Any,action:Selector) -> Any {
        let btn = UIButton()
        btn.setImage(UIImage.init(named: imageName), for: .normal)
        btn.sizeToFit()
        if btn.bounds.size.width < 44 {
            let width = 44 / btn.bounds.size.height * btn.bounds.size.width
            btn.bounds = CGRect(x: 0, y: 0, width: width, height: 44)
        }
        if btn.bounds.size.width > 44 {
            let height = 44 / btn.bounds.size.width * btn.bounds.size.height
            btn.bounds = CGRect(x: 0, y: 0, width: 44, height: height)
        }
        btn.addTarget(target, action: action, for: .touchUpInside)
        
        return self.init(customView: btn)
    }
    
    class func itemWithTitle(title:String,target:Any,action:Selector) -> Any {
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.sizeToFit()
        btn.addTarget(target, action: action, for: .touchUpInside)
        return self.init(customView: btn)
    }
    
    
    class func itemWithTitleWithColor(title:String,color:UIColor,type:UIControlContentHorizontalAlignment,target:Any,action:Selector) -> Any {
        let btn = UIButton()
        btn.bounds = CGRect(x: 0, y: 0, width: 65, height: 44)
        btn.titleLabel?.font = boldFont(14)
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(color, for: .normal)
        btn.contentHorizontalAlignment = type
        btn.addTarget(target, action: action, for: .touchUpInside)
        return self.init(customView: btn)
    }
    
}

