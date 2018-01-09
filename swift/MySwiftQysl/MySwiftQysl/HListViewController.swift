//
//  HListViewController.swift
//  MySwiftQysl
//
//  Created by user on 17/4/18.
//  Copyright © 2017年 HuLiYin. All rights reserved.
//

import UIKit
extension UITableView {
    
    /*
     弹出一个静态的cell，无须注册重用，例如:
     let cell: GrayLineTableViewCell = tableView.mm_dequeueStaticCell(indexPath)
     即可返回一个类型为GrayLineTableViewCell的对象
     
     - parameter indexPath: cell对应的indexPath
     - returns: 该indexPath对应的cell
     */
    func mm_dequeueStaticCell<newCell: UITableViewCell>(indexPath: NSIndexPath) -> newCell {
        let reuseIdentifier = "staticCellReuseIdentifier - \(indexPath.description)"
        if let cell = self.dequeueReusableCell(withIdentifier: reuseIdentifier) as? newCell {
            return cell
        }else {
            let cell = newCell(style: .default, reuseIdentifier: reuseIdentifier)
            return cell
        }
    }
}
class HListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.isTranslucent = true
        self.title = "List"
        let tableView = UITableView();
        tableView.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        tableView.delegate = self;
        tableView.dataSource = self;
        self.view .addSubview(tableView)
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("index.row====%@", indexPath.row);
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        NSLog("%d", indexPath.row)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.mm_dequeueStaticCell(indexPath: indexPath as NSIndexPath)
        
//       let  cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let lable  = UILabel()
        lable.frame = CGRect.init(x: 20, y: 7, width: UIScreen.main.bounds.size.width, height: 30)
        lable.text = "ddddddd"
        lable.font = UIFont.systemFont(ofSize: 14)
        let view = HZiDingYiView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 40))
        cell .addSubview(view)
        return cell
//        let cell = tableView.dequeueReusableCell(withIdentifier: kLeftTableViewCell, for: indexPath) as! LeftTableViewCell
//        let model = dataSource[indexPath.row]
//        cell.nameLabel.text = model.name
//        return cell
        
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
