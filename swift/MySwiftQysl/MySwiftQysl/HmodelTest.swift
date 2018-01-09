//
//  HmodelTest.swift
//  MySwiftQysl
//
//  Created by user on 17/4/17.
//  Copyright © 2017年 HuLiYin. All rights reserved.
//

import UIKit

class HmodelTest: NSObject {
    var string : NSString = ""
    var number : intmax_t = 1
    
    
    override init()
    {
        super.init()
    }
    func setDicInfo(dic:NSDictionary) {
        let dicInfo = dic as! [String:Any]
        
        self.string = dicInfo["ddd"] as! NSString
        self.number = dicInfo["d"] as! intmax_t
        
    }
    
}
