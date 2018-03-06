//
//  UIViewController+Extension.swift
//  laifuPos
//
//  Created by 炳神 on 2017/11/22.
//  Copyright © 2017年 CBcc. All rights reserved.
//

import UIKit
extension UIViewController{
    /**
     *  pop页面
     */
    func popVC(){
        if (navigationController != nil) {
            self.navigationController?.popViewController(animated: true)
        }else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    /**
     *  push页面
     */
    func pushVC(viewController:UIViewController){
        viewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(viewController, animated: true)
        if navigationController?.viewControllers.count == 1 {
            viewController.hidesBottomBarWhenPushed = false
        }
    }
    
    /**
     *返回任意一个页面
     */
    func popToViewControllerAtIndex(index:NSInteger){
        if (self.navigationController?.viewControllers.count)! > index {
            self.navigationController?.popToViewController((self.navigationController?.viewControllers[index])!, animated: true)
        }
    }
    
    /**
     *popToRoot页面
     */
    func popToRootVC(){
        self.navigationController?.popToRootViewController(animated: true)
    }
}

extension UINavigationController :UIGestureRecognizerDelegate,UINavigationControllerDelegate{
    func setupNavi(){
        self.interactivePopGestureRecognizer?.delegate = self
    }
    //UINavigationControllerDelegate方法
    public func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        //实现滑动返回功能
        //清空滑动返回手势的代理就能实现
        if viewController == self.navigationController?.viewControllers[0] {
            self.navigationController?.interactivePopGestureRecognizer!.delegate = self.navigationController?.interactivePopGestureRecognizer?.delegate
        }
        else {
            self.navigationController?.interactivePopGestureRecognizer!.delegate = nil
        }
    }
}

