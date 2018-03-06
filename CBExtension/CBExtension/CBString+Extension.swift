//
//  CBString+Extension.swift
//  laifuPos
//
//  Created by 炳神 on 2017/11/20.
//  Copyright © 2017年 CBcc. All rights reserved.
//

import Foundation

extension String {
    func getMd5Stirng()->String{
        let str = self.cString(using: String.Encoding.utf8)
        let strLen = CUnsignedInt(self.lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = Int(16)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
        CC_MD5(str!, strLen, result)
        let hash = NSMutableString()
        for i in 0..<16 {
            hash.appendFormat("%02x", result[i])
        }
        return String(hash)
    }
    
    static func className(_ aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).components(separatedBy: ".").last!
    }
    
    //根据开始位置和长度截取字符串
    func subString(start:Int, length:Int = -1) -> String {
        var len = length
        if len == -1 {
            len = self.count - start
        }
        let st = self.index(startIndex, offsetBy:start)
        let en = self.index(st, offsetBy:len)
        return String(self[st ..< en])
    }
    
    func strChangeBase64()->String{
        let data = self.data(using: String.Encoding.utf8)
        return data!.base64EncodedString(options: NSData.Base64EncodingOptions.init(rawValue: 0))
    }
    
    //隐藏中间几位手机号
    func hiddenPhoneFour()->String{
        return self.subString(start: 0, length: 3) + "****" + self.subString(start: 7, length: 4)
    }
    //隐藏名字后两位
    func hiddenName()->String{
        return "**" + self.subString(start: self.count - 1, length: 1)
    }
}
