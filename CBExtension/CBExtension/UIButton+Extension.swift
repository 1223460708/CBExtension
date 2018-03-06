//
//  UIButton+Extension.swift
//  laifuWallt
//
//  Created by 炳神 on 2018/1/9.
//  Copyright © 2018年 CBcc. All rights reserved.
//

import UIKit
enum ButtonImagePosition : Int{
    case PositionTop = 0
    case Positionleft
    case PositionBottom
    case PositionRight
}
extension UIButton {
    /**
     imageName:图片的名字
     title：button 的名字
     type ：image 的位置
     Space ：图片文字之间的间距
     */
    func setImageAndTitle(imageName:String,title:String,type:ButtonImagePosition,Space space:CGFloat)  {
        
        self.setTitle(title, for: .normal)
        self.setImage(UIImage(named:imageName), for: .normal)
        
        let imageWith :CGFloat = (self.imageView?.frame.size.width)!;
        let imageHeight :CGFloat = (self.imageView?.frame.size.height)!;
        
        var labelWidth :CGFloat = 0.0;
        var labelHeight :CGFloat = 0.0;
        
        labelWidth = CGFloat(self.titleLabel!.intrinsicContentSize.width);
        labelHeight = CGFloat(self.titleLabel!.intrinsicContentSize.height);
        
        var  imageEdgeInsets :UIEdgeInsets = UIEdgeInsets();
        var  labelEdgeInsets :UIEdgeInsets = UIEdgeInsets();
        
        switch type {
        case .PositionTop:
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight - space/2.0, 0, 0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-space/2.0, 0);
            break;
        case .Positionleft:
            imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
            break;
        case .PositionBottom:
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space/2.0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space/2.0, -imageWith, 0, 0);
            break;
        case .PositionRight:
            print(labelWidth)
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth - space, 0, -space);
            labelEdgeInsets = UIEdgeInsetsMake(0, -space, 0, 0);
            break;
        }
        
        // 4. 赋值
        self.titleEdgeInsets = labelEdgeInsets;
        self.imageEdgeInsets = imageEdgeInsets;
    }
    
    func createdCustomButtom(text:String?,img:UIImage?,font:UIFont,textColor:UIColor){
        self.setTitleColor(textColor, for: .normal)
        self.titleLabel?.font = font
        if text == nil && img == nil{
            self.setTitle("", for: .normal)
            return
        }
        if text == nil {
            self.setImage(img, for: .normal)
            return
        }
        if img == nil {
            self.setTitle(text, for: .normal)
            return
        }
        
    }
    
    
//    func setEnableFlase(){self.isEnabled = false}
//    func setEnableTrue(){self.isEnabled = true}
    
}

