//
//  DateUtil.swift
//  rpc
//
//  Created by 熊智亮 on 16/4/30.
//  Copyright © 2016年 熊智亮. All rights reserved.
//

import Foundation

//自定义日期类型
public struct Date {
    var timeInterval : NSTimeInterval//public typealias NSTimeInterval = Double
    
    var description : String {
        get {
            return String(self.timeInterval)
        }
    }
    init(){
        self.timeInterval = NSDate().timeIntervalSince1970
    }
    
    init(timeInterval : NSTimeInterval){
        self.timeInterval = timeInterval
    }
    
    func before(date : Date) -> Bool{
        if(self.timeInterval > date.timeInterval){
            return true
        }else{
            return false
        }
    }
    
    func after(date : Date) -> Bool{
        if(self.timeInterval < date.timeInterval){
            return true
        }else{
            return false
        }
    }
    
    //一些计算属性，年月日，时分秒
    
}

public class DateUtil{
    
    public static func addDays(date : Date,amount : Int) -> Date{
        let newTimeInterval = date.timeInterval + NSTimeInterval(amount * (24 * 60 * 60))
        return Date(timeInterval: newTimeInterval)
    }
    
    public static func addMinutes(date : Date,amount : Int) -> Date{
        let newTimeInterval = date.timeInterval + NSTimeInterval(amount * 60)
        return Date(timeInterval : newTimeInterval)
    }
    
    public static func addSeconds(date : Date , amount : Int) -> Date{
        let newTimeInterval = date.timeInterval + NSTimeInterval(amount)
        return Date(timeInterval: newTimeInterval)
    }
    
    //加月
    
    //加年
    
    
    //将Date转为指定格式的String
    public static func formatDate(date : Date,formatter : String) -> String{
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = formatter
        return dateFormatter.stringFromDate(NSDate(timeIntervalSince1970: date.timeInterval))
    }
    
    //将String类型的日期转换成Date
    public static func fromString(date : String,formatter : String) -> Date?{
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = formatter
        if let timeInterval = dateFormatter.dateFromString(date)?.timeIntervalSince1970{
            return Date(timeInterval: timeInterval)
        }else{
            return nil
        }
    }
    
}