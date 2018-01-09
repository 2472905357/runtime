//
//  HTabbarViewController.swift
//  MySwiftQysl
//
//  Created by user on 16/12/26.
//  Copyright © 2016年 HuLiYin. All rights reserved.
//

import UIKit

class HTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = UIColor.black
        
        UITabBar.appearance().isTranslucent  = false
        self.tabBar.barTintColor = UIColor.black
        self .creatSubViewControllers()
        // Do any additional setup after loading the view.
    }
    func creatSubViewControllers(){
        
           self.view.backgroundColor = UIColor.black
        
        
        var image1:UIImage = UIImage(named: "tabbar_home")!
        var selectedimage1:UIImage = UIImage(named: "tabbar_home_selected")!
        image1 = image1.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        selectedimage1 = selectedimage1.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
     
        
        
        
        let firstVC  = HMyInfoViewController ()
          let nvcF = UINavigationController(rootViewController:firstVC);
//         nav1.navigationController.navigationBar.translucent=NO;
        
        let item1 : UITabBarItem = UITabBarItem (title: "第一页面", image: image1, selectedImage: selectedimage1)
//        #d7b56b

      
       

        
         nvcF.tabBarItem = item1
        
        let secondVC = HMainViewController ()
        let item2 : UITabBarItem = UITabBarItem (title: "首页", image: UIImage(named: "tabbar_sort"), selectedImage: UIImage(named: "tabbar_sort_selected")?.withRenderingMode(.alwaysOriginal))
        
         let nvcS = UINavigationController(rootViewController:secondVC);
         secondVC.tabBarItem.title="首页"
        nvcS.tabBarItem = item2
        let tabArray = [nvcS,nvcF]
        self.viewControllers = tabArray

      
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.gray], for:UIControlState.normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 215/255.0, green: 181/255.0, blue: 107/255.0, alpha: 1)], for:UIControlState.selected)

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
