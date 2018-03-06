//
//  CBImageWithColor.swift
//  laifuPos
//
//  Created by 炳神 on 2017/11/16.
//  Copyright © 2017年 CBcc. All rights reserved.
//

import Foundation
import UIKit
//MARK:---颜色转图片
func creatImageWithColor(color:UIColor)->UIImage{
    let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
    UIGraphicsBeginImageContext(rect.size)
    let context = UIGraphicsGetCurrentContext()
    context!.setFillColor(color.cgColor)
    context!.fill(rect)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image!
}
