//
//  HviewZiDingYi.swift
//  MySwiftQysl
//
//  Created by user on 17/4/19.
//  Copyright © 2017年 HuLiYin. All rights reserved.
//

import UIKit

class HviewZiDingYi: UIView {

    var string = NSString()
    let number = NSInteger()
    var indexNumber : Int = 0
    var stringNew  : NSString = ""
    var isbooL : Bool = false
    var numberNew : NSInteger = 1
    var modle = Hmodle()
    var numberString = NSString()
    
    /**
     *
     :是定义属性的类型
     *
     **/
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    // 重定义init进行初始化
    override init(frame : CGRect){
        super.init(frame : frame)
        
        
    }
    func cgreatNewS(stringN:NSString) -> Bool {
        NSLog("stringN===%@", stringN)
        return true
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
