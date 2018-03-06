//
//  CGFloat+Extension.swift
//  laifuPos
//
//  Created by 炳神 on 2017/11/23.
//  Copyright © 2017年 CBcc. All rights reserved.
//

import Foundation
import UIKit
extension CGFloat {
    func wRatio()->CGFloat{
        return self * UIScreen.main.bounds.size.width / 375
    }
    func hRatio()->CGFloat{
        return self * UIScreen.main.bounds.size.height / 667
    }
}

extension Double{
    func wRatio()->Double{
        return self * Double(UIScreen.main.bounds.size.width / 375)
    }
    func hRatio()->Double{
        return self * Double(UIScreen.main.bounds.size.height / 667)
    }
}


