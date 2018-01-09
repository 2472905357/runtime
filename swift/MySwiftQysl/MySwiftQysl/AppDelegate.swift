//
//  AppDelegate.swift
//  MySwiftQysl
//
//  Created by user on 16/12/26.
//  Copyright © 2016年 HuLiYin. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        let root  = HTabbarViewController()
        self.window?.rootViewController=root
//        nav1.topViewController = HMyInfoViewController()
        
        return true
    }
    
    
    
    
//    func creatTableBar(){
//    //    UITabBarController *tb=[[UITabBarController alloc]init];
//    //设置控制器为Window的根控制器
//    
//    //b.创建子控制器
//    HMainViewController *c1=[[HMainViewController alloc]init];
//    //    c1.tabBarItem.badgeValue=@"123";
//    
//    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:c1];
//    nav1.navigationBar.barTintColor = [UIColor whiteColor];
//    nav1.tabBarItem.title=@"首页";
//    nav1.navigationController.navigationBar.translucent=NO;
//    nav1.tabBarItem.image=[UIImage imageNamed:@"tabarMain"];
//    nav1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabarMainSelected"];
//    HxingChengViewController *c2=[[HxingChengViewController alloc]init];
//    
//    [c2.navigationController setNavigationBarHidden:NO animated:TRUE];
//    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:c2];
//    nav2.navigationBar.barTintColor = [UIColor whiteColor];
//    nav2.tabBarItem.title=@"行程";
//    nav2.navigationController.navigationBar.translucent=NO;
//    nav2.tabBarItem.image=[UIImage imageNamed:@"tabarXing"];
//    nav2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabarXingSelected"];
//    
//    HPhoneViewController *c3=[[HPhoneViewController alloc]init];
//    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:c3];
//    nav3.tabBarItem.title=@"电话";
//    nav3.navigationController.navigationBar.translucent=NO;
//    
//    nav3.navigationBar.barTintColor = [UIColor whiteColor];
//    [c3.navigationController setNavigationBarHidden:NO animated:TRUE];
//    nav3.tabBarItem.image=[UIImage imageNamed:@"tabarPhone"];
//    nav3.tabBarItem.selectedImage = [UIImage imageNamed:@"tabarPhoneSelected"];
//    HMyViewController *c4=[[HMyViewController alloc]init];
//    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:c4];
//    nav4.tabBarItem.title=@"我的";
//    nav4.navigationController.navigationBar.translucent=NO;
//    nav4.tabBarItem.image=[UIImage imageNamed:@"tabarMy"];
//    nav4.navigationBar.barTintColor = [UIColor whiteColor];
//    nav4.tabBarItem.selectedImage = [UIImage imageNamed:@"tabarMySelected"];
//    
//    
//    
//    HtabBarViewController*_tabBarController = [[HtabBarViewController alloc]init];
//    _tabBarController.view.backgroundColor = [UIColor whiteColor];
//    [_tabBarController setViewControllers:@[nav1,nav2,nav3,nav4]];
//    
//    
//    
//    self.window.rootViewController = _tabBarController;
//    // 拿到 TabBar 在拿到想应的item
//    _tabBarController.navigationController.view.backgroundColor = [UIColor whiteColor];
//    UITabBar *tabBar = _tabBarController.tabBar;
//    UITabBarItem *item0 = [tabBar.items objectAtIndex:0];
//    UITabBarItem *item1 = [tabBar.items objectAtIndex:1];
//    UITabBarItem *item2 = [tabBar.items objectAtIndex:2];
//    UITabBarItem *item3 = [tabBar.items objectAtIndex:3];
//    // 对item设置相应地图片
//    item0.selectedImage = [[UIImage imageNamed:@"tabarMainSelected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
//    item0.image = [[UIImage imageNamed:@"tabarMain"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    item1.selectedImage = [[UIImage imageNamed:@"tabarXingSelected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
//    item1.image = [[UIImage imageNamed:@"tabarXing"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    item2.selectedImage = [[UIImage imageNamed:@"tabarPhoneSelected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
//    item2.image = [[UIImage imageNamed:@"tabarPhone"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    item3.selectedImage = [[UIImage imageNamed:@"tabarMySelected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
//    item3.image = [[UIImage imageNamed:@"tabarMy"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    
//    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 49)];
//    backView.backgroundColor = [UIColor blackColor];
//    [_tabBarController.tabBar insertSubview:backView atIndex:0];
//    _tabBarController.tabBar.opaque = YES;
//    [item0 setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithHex:@"#d7b56b"]} forState:UIControlStateSelected];
//    [item1 setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHex:@"#d7b56b"]} forState:UIControlStateSelected];
//    [item2 setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHex:@"#d7b56b"]} forState:UIControlStateSelected];
//    [item3 setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHex:@"#d7b56b"]} forState:UIControlStateSelected];
//    
//    
//    }
    
    
    
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "MySwiftQysl")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

