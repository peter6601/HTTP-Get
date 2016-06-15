//
//  Data.swift
//  MissionOne
//
//  Created by 丁暐哲 on 2016/6/15.
//  Copyright © 2016年 Din. All rights reserved.
//

import Foundation

class Shots {
//    var a:Int
//    var b:Int
    var reslut:Int

    init(data:NSDictionary){
        self.reslut = data["result"] as? Int ?? 0
    }
}

class Parameter {
    var a:Int = 1
    var b:Int = 1
//    init(a:Int,b:Int){
//        self.a = a
//        self.b = b
    }
    
    
    
