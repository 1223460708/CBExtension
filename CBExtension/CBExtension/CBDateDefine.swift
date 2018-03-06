//
//  CBDateDefine.swift
//  CBA
//
//  Created by 炳神 on 2017/11/9.
//  Copyright © 2017年 炳神. All rights reserved.
//

import UIKit

class CBDateDefine: NSObject {

    //MARK:---获取当前时间
    class func getCurrentTime()->String{
        let time = Date.init()
        let dateFormat = DateFormatter.init()
        dateFormat.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormat.string(from: time as Date)
    }
    
    //时间戳转时间
    class func getTime(timeStamp:Int)->String{
        //转换为时间
        let timeInterval:TimeInterval = TimeInterval(timeStamp)
        let date = NSDate(timeIntervalSince1970: timeInterval)
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yyyy-MM-dd HH:mm:ss" //自定义日期格式
        let time = dateformatter.string(from: date as Date)
        return time
    }
    
    //时间戳转时间  (月日)
    class func getMDTime(timeStamp:Int)->String{
        //转换为时间
        let timeInterval:TimeInterval = TimeInterval(timeStamp)
        let date = NSDate(timeIntervalSince1970: timeInterval)
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "MM-dd HH:mm:ss" //自定义日期格式
        let time = dateformatter.string(from: date as Date)
        return time
    }
    
    //时间转时间戳
    class func getTimeInterval(date:String)->Int{
        let datefmatter = DateFormatter()
        datefmatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date = datefmatter.date(from: date)
        let dateStamp:TimeInterval = date!.timeIntervalSince1970
        let dateTimeInterval:Int = Int(dateStamp)
        return dateTimeInterval
    }
}
