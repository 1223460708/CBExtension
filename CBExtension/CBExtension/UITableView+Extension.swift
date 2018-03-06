//
//  UITableView+Extension.swift
//  laifuPos
//
//  Created by 炳神 on 2017/11/20.
//  Copyright © 2017年 CBcc. All rights reserved.
//

import UIKit
extension UITableView {
    func registerCellClass(_ cellClass: AnyClass) {
        let identifier = String.className(cellClass)
        self.register(cellClass, forCellReuseIdentifier: identifier)
    }
}

extension UITableViewCell {
    class var identifier: String { return String.className(self) }
}

