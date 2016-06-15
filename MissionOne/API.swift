//
//  API.swift
//  MissionOne
//
//  Created by 丁暐哲 on 2016/6/15.
//  Copyright © 2016年 Din. All rights reserved.
//

import Foundation

class FirstAPI {
    
    
    func ConnectAPI(completion:((Shots) -> Void), firstNumber: Int,secondNumber: Int){
        let url = "https://test.wanting.athene.idv.tw/training/add.php?"
        let someURl = url + "a=\(firstNumber)&b=\(secondNumber)"
        let session = NSURLSession.sharedSession()
        let DataURl = NSURL(string: someURl)
        print(someURl)
        let task = session.dataTaskWithURL(DataURl!){(data,result,error)  in
//            print(data)
            do {
                let shotData = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as! NSDictionary
                
                let somedata = Shots(data: shotData)
                
                let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
                dispatch_async(dispatch_get_global_queue(priority, 0)) {
                    dispatch_async(dispatch_get_main_queue()) {
                        completion(somedata)
                        
                    }
                }
            }catch{
                print("error = \(error)")
            }
            
        }
        task.resume()
    }
    
}