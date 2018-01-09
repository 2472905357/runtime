//
//  HFarhterViewController.swift
//  MySwiftQysl
//
//  Created by user on 17/1/4.
//  Copyright © 2017年 HuLiYin. All rights reserved.
//

import UIKit

class HFarhterViewController: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.hidesBarsOnTap = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }

    override func loadViewIfNeeded() {
        self.navigationController?.hidesBarsOnTap = true
        self.navigationController?.navigationBar.isTranslucent = false
    }
    func changeString() -> NSString {
        return "ddddd"
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
