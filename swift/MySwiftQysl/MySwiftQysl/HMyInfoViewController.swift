//
//  HMyInfoViewController.swift
//  MySwiftQysl
//
//  Created by user on 16/12/26.
//  Copyright © 2016年 HuLiYin. All rights reserved.
//

import UIKit

class HMyInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
        self.title = "个人信息"
        self.view.backgroundColor = UIColor.init(red: 246/255.0, green: 248/255.0, blue: 251/255.0, alpha: 1)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
