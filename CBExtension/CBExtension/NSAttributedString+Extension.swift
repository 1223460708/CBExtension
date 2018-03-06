//
//  NSAttributedString+Extension.swift
//  laifuPos
//
//  Created by 炳神 on 2017/11/27.
//  Copyright © 2017年 CBcc. All rights reserved.
//

import UIKit
extension NSAttributedString {
    class func cb_attibuteString(textArray:[String],colorArray:[UIColor],fontArray:[UIFont])->NSMutableAttributedString{
        let mutableAttribute = NSMutableAttributedString()
        for i in 0..<textArray.count{
            let attibute = NSAttributedString(string: textArray[i], attributes: [NSAttributedStringKey.foregroundColor:colorArray[i],NSAttributedStringKey.font:fontArray[i]])
            mutableAttribute.append(attibute)
        }
        return mutableAttribute
    }
}

