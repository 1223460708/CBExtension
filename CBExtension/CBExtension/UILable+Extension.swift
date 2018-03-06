//
//  UILable+Extension.swift
//  laifuWallt
//
//  Created by 炳神 on 2018/1/17.
//  Copyright © 2018年 CBcc. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    func createdCustomLab(text:String,font:UIFont,textColor:UIColor,ailgnemt:NSTextAlignment){
        self.text = text
        self.font = font
        self.textColor = textColor
        self.textAlignment = ailgnemt
    }
}
