//
//  HZiDingYiView.swift
//  MySwiftQysl
//
//  Created by user on 17/4/18.
//  Copyright © 2017年 HuLiYin. All rights reserved.
//

import UIKit

class HZiDingYiView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    // 闭包 类似oc中的block
    var buttonCallBack:(() -> ())?
   
    // 重写init方法
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
//        self.backgroundColor = UIColor.red
        let lable: UILabel = UILabel()
        lable.frame = CGRect.init(x: 0, y:10, width:UIScreen.main.bounds.size.width, height: 20)
        lable.text = "我丫就是一label"
        lable.textAlignment = NSTextAlignment.center
//        lable.backgroundColor = UIColor.lightGray
        self.addSubview(lable)
//
//
        let button:UIButton = UIButton.init(type : UIButtonType.roundedRect)
        button.frame = CGRect(x:0,y:lable.frame.size.height+10+5,width:UIScreen.main.bounds.size.width,height:40)
//        button.backgroundColor = UIColor.lightGray
        button.setTitle("俺是个按钮啊", for: UIControlState.normal)
//        button.addTarget(self, action: Selector(("buttonCllick:")), for: UIControlEvents.touchUpInside)
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        self.addSubview(button)
        NSLog("%@", "进来了")
    }
    
    // 反正重写了init方法这个会根据提示自动蹦出来
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 按钮点击事件的调用
    func buttonCllick() {
        
    }
//    func buttonCllick(button: UIButton){
//        if buttonCallBack != nil {
//            buttonCallBack!()
//        }
//    }
    
    // 重新绘制和oc里面效果一样（其实我也不是很明白）
    override func draw(_ rect: CGRect) {
        //self.backgroundColor = UIColor.whiteColor()
    }
}
