//
//  CornerRadius+Extension.swift
//  laifuWallt
//
//  Created by 炳神 on 2017/12/7.
//  Copyright © 2017年 CBcc. All rights reserved.
//

import Foundation
import UIKit

func addCornerRadius(view:UIView,radius:CGFloat){
    view.layer.cornerRadius = radius
    view.layer.masksToBounds = true
}

func addBorderColor(view:UIView,borderColor:UIColor,borderWidth:CGFloat){
    view.layer.borderColor = borderColor.cgColor
    view.layer.borderWidth = borderWidth
}
