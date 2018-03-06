//
//  UICollectionView+Extension.swift
//  laifuPos
//
//  Created by 炳神 on 2017/11/27.
//  Copyright © 2017年 CBcc. All rights reserved.
//

import UIKit
extension UICollectionView {
    func registerCellClass(_ cellClass: AnyClass) {
        let identifier = String.className(cellClass)
        self.register(cellClass, forCellWithReuseIdentifier: identifier)
    }
}

extension UICollectionViewCell {
    class var identifier: String { return String.className(self) }
}

