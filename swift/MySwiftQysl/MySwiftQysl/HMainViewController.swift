//
//  HMainViewController.swift
//  MySwiftQysl
//
//  Created by user on 16/12/26.
//  Copyright © 2016年 HuLiYin. All rights reserved.
//

import UIKit
import Alamofire
//import CryptoSwift
class HMainViewController: UIViewController,UIGestureRecognizerDelegate {

    let imageViewF = UIImageView()
    let imageViewZ = UIImageView()
    let imageViewQ = UIImageView()
    let imageViewT = UIImageView()
    let imageViewJ = UIImageView()
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.isNavigationBarHidden = true
          self.navigationController?.navigationBar.isTranslucent = false
    }
    override func loadViewIfNeeded() {
         self.navigationController?.hidesBarsOnTap = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadRquest()
         self.navigationController?.isNavigationBarHidden = true
        let imageBackImageView = UIImageView()
        imageBackImageView.frame = self.view.bounds
        imageBackImageView.image = UIImage.init(imageLiteralResourceName: "mainBack")
        self.view .addSubview(imageBackImageView)
        self.view.backgroundColor = UIColor.white
//        let tapAll = UITapGestureRecognizer()
//        
//        tapAll .addTarget(self, action:Selector(("getTapPoint:")))
//       
//        tapAll.numberOfTapsRequired = 1
//        self.view .addGestureRecognizer(tapAll)
        
        self.title = "主页"
        let imageMain = UIImageView();
        imageMain.frame = CGRect.init(x: UIScreen.main.bounds.size.width/2-50, y: UIScreen.main.bounds.size.height/10, width: 100, height: 100)
        imageMain.clipsToBounds = true
        imageMain.layer.cornerRadius = 5
        imageMain.contentMode = UIViewContentMode.scaleAspectFit
        imageMain.image = UIImage.init(imageLiteralResourceName: "mianTopImage")
        self.view .addSubview(imageMain)
        self.imageViewF.frame = CGRect.init(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2, width: 0, height: 0)
        self.imageViewT.frame = CGRect.init(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2, width: 0, height: 0)
         self.imageViewZ.frame = CGRect.init(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2, width: 0, height: 0)
         self.imageViewQ.frame = CGRect.init(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2, width: 0, height: 0)
         self.imageViewJ.frame = CGRect.init(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2, width: 0, height: 0)
        self .creatView()
        let tap = UITapGestureRecognizer()
        self.imageViewF.isUserInteractionEnabled = true
        tap .addTarget(self, action: #selector(HMainViewController.erCha))
        self.imageViewF .addGestureRecognizer(tap)
        
        
        let tap2 = UITapGestureRecognizer()
        self.imageViewQ.isUserInteractionEnabled = true
        tap2 .addTarget(self, action: #selector(HMainViewController.toList))
        self.imageViewQ .addGestureRecognizer(tap2)
        self .creatRequest()
        // Do any additional setup after loading the view.
    }

   
    func erCha() {
        let vc = HViewController()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: false)
    }
    func toList() {
        let vc = HListViewController()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: false)
    }
    func creatView(){
        UIView .animate(withDuration: 0.5, animations: {
         
            
            self.imageViewF.frame = CGRect.init(x: (UIScreen.main.bounds.size.width-80)/2, y: UIScreen.main.bounds.size.height*3/10, width: 80, height: 80)
//            self.imageViewF.backgroundColor = UIColor.red
//            self.imageViewF.clipsToBounds = true;
//            self.imageViewF.layer.cornerRadius = 5
            self.imageViewF.image = UIImage.init(imageLiteralResourceName: "feiJ")
            self.view .addSubview(self.imageViewF)
            
            
            self.imageViewT.frame = CGRect.init(x: UIScreen.main.bounds.size.width/11, y: UIScreen.main.bounds.size.height*5/10, width: 70, height: 70)
            //            self.imageViewF.backgroundColor = UIColor.red
            //            self.imageViewF.clipsToBounds = true;
            //            self.imageViewF.layer.cornerRadius = 5
            self.imageViewT.image = UIImage.init(imageLiteralResourceName: "train")
            self.view .addSubview(self.imageViewT)
            
            self.imageViewZ.frame = CGRect.init(x: UIScreen.main.bounds.size.width*10/11-70, y: UIScreen.main.bounds.size.height*5/10, width: 70, height: 70)
            //            self.imageViewF.backgroundColor = UIColor.red
            //            self.imageViewF.clipsToBounds = true;
            //            self.imageViewF.layer.cornerRadius = 5
            self.imageViewZ.image = UIImage.init(imageLiteralResourceName: "zuC")
            self.view .addSubview(self.imageViewZ)
            

            self.imageViewQ.frame = CGRect.init(x: UIScreen.main.bounds.size.width*2/10, y: UIScreen.main.bounds.size.height*7/10, width: 60, height: 60)
            //            self.imageViewF.backgroundColor = UIColor.red
            //            self.imageViewF.clipsToBounds = true;
            //            self.imageViewF.layer.cornerRadius = 5
            self.imageViewQ.image = UIImage.init(imageLiteralResourceName: "qianZ")
            self.view .addSubview(self.imageViewQ)
            
            self.imageViewJ.frame = CGRect.init(x: UIScreen.main.bounds.size.width*8/10-70, y: UIScreen.main.bounds.size.height*7/10, width: 60, height:60)
            //            self.imageViewF.backgroundColor = UIColor.red
            //            self.imageViewF.clipsToBounds = true;
            //            self.imageViewF.layer.cornerRadius = 5
            self.imageViewJ.image = UIImage.init(imageLiteralResourceName: "jiuD")
            self.view .addSubview(self.imageViewJ)
            
        })
        
       print("1234进行base64加密之后：",self .base64Encoding(plainString: "1234"))
    
        print( "base64解密之后：",self .base64Decoding(encodedString:  self .base64Encoding(plainString: "1234")))
    }
    
    
    
    ///传入图片image回传对应的base64字符串,默认不带有data标识,
    func imageToBase64String(image:UIImage,headerSign:Bool = false)->String?{
        
        ///根据图片得到对应的二进制编码
        guard let imageData = UIImagePNGRepresentation(image) else {
            return nil
        }
        ///根据二进制编码得到对应的base64字符串
        var base64String = imageData.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue:0))
        ///判断是否带有头部base64标识信息
        if headerSign {
            ///根据格式拼接数据头 添加header信息，扩展名信息
            base64String = "data:image/png;base64," + base64String
        }
        return base64String
    }
    
    
    
    ///传入base64的字符串，可以是没有经过修改的转换成的以data开头的，也可以是base64的内容字符串，然后转换成UIImage
    func base64StringToUIImage(base64String:String)->UIImage? {
        var str = base64String
        
        // 1、判断用户传过来的base64的字符串是否是以data开口的，如果是以data开头的，那么就获取字符串中的base代码，然后在转换，如果不是以data开头的，那么就直接转换
        if str.hasPrefix("data:image") {
            guard let newBase64String = str.components(separatedBy: ",").last else {
                return nil
            }
            str = newBase64String
        }
        // 2、将处理好的base64String代码转换成NSData
        guard let imgNSData = NSData(base64Encoded: str, options: NSData.Base64DecodingOptions()) else {
            return nil
        }
        // 3、将NSData的图片，转换成UIImage
        guard let codeImage = UIImage(data: imgNSData as Data) else {
            return nil
        }
        return codeImage
    }
    
    
    
    
    /**
     *   编码
     */
    func base64Encoding(plainString:String)->String
    {
        
        let plainData = plainString.data(using: String.Encoding.utf8)
        let base64String = plainData?.base64EncodedString(options: NSData.Base64EncodingOptions.init(rawValue: 0))
        return base64String!
    }
    
    /**
     *   解码
     */
    func base64Decoding(encodedString:String)->String
    {
        let decodedData = NSData(base64Encoded: encodedString, options: NSData.Base64DecodingOptions.init(rawValue: 0))
        let decodedString = NSString(data: decodedData! as Data, encoding: String.Encoding.utf8.rawValue)! as String
        return decodedString
    }
    
    
//    请求
    func loadRquest()  {
      
        let str = "welcome to hangge.com"
        let key = "67FG"
//        let hmacStr = str.hmac(.SHA1, key: key)
        let pwd = str.MD5()
        NSLog("%@", pwd)
        
 
        // 1. GET请求
        let urlStr = "http://c.m.163.com/nc/video/home/0-10.html"
        Alamofire.request(urlStr, method: .get).responseJSON { (returnResult) in
            if returnResult.result.isSuccess
            {
                
//                let dic:NSDictionary = NSKeyedUnarchiver.unarchiveObjectWithData(returnResult.data!)! as! NSDictionary
                let json = try? JSONSerialization.jsonObject(with: returnResult.data!,
                                                             options:.allowFragments) as! [String: Any]
                let uname = json?["videoList"] as! NSArray
                let modle = Hmodle();
                modle .setDicValue(dic: uname[0] as! NSDictionary)
//              let dic:NSDictionary =   NSKeyedUnarchiver.unarchiveObject(with: returnResult.data!) as! NSDictionary
                print("secondMethod --> POST 请求 --> returnResultdddd = \(modle.cover)")
                print("videoTopic --> POST 请求 --> returnResultdddd = \(modle.videoTopic)")
                
                /*
                 *
                 解析链接转成图片
                 *
                 */
                let url2 : NSURL = NSURL(string: modle.cover)!
                /**
                 *  初始化data。从URL中获取数据
                 */
                let data2 : NSData = NSData(contentsOf:url2 as URL)!
                /**
                 *  创建图片
                 */
                let image = UIImage(data:data2 as Data, scale: 1.0)
//                 self.imageViewF.image = image
                
                
            }else
            {
//                print("secondMethod --> POST 请求 --> returnResult = 失败")
            }
        }
        
        
//        
//        let urlStr = "\(SERVICE_URL)type=\(YULE)&key=\(APPKEY)"
//        Alamofire.request(urlStr, method: .get).responseJSON { (returnResult) in
//            print("secondMethod --> GET 请求 --> returnResult = \(returnResult)")
//        }
        
        
//        
        // 2. POST请求
        Alamofire.request(urlStr, method: .post).responseJSON { (returnResult) in
           
            if returnResult.result.isSuccess
            {
                 print("secondMethod --> POST 请求 --> returnResult = \(returnResult)")
            }else
            {
                 print("secondMethod --> POST 请求 --> returnResult = 失败")
            }
            
            
        }
        
        
//        // 3. 参数、编码
//        // 官方解释：Alamofire supports three types of parameter encoding including: URL, JSON and PropertyList. It can also support any custom encoding that conforms to the ParameterEncoding protocol.
        let param = [
            "type": "dd",
            "key" : "ddddd"
        ]
        NSLog("%@", param)
//        Alamofire.request(SERVICE_URL, method: .post, parameters: param).responseJSON { (returnResult) in
//            print("secondMethod --> 参数 --> returnResult = \(returnResult)")
//        }
//        //Alamofire.request(SERVICE_URL, method: .post, parameters: param, encoding: URLEncoding.default)
//        //Alamofire.request(SERVICE_URL, method: .post, parameters: param, encoding: URLEncoding(destination: .methodDependent))
//        
//        // 4.请求头
//        let headers: HTTPHeaders = [
//            "Accept": "application/json"
//        ]
//        Alamofire.request(urlStr, headers: headers).responseJSON { (returnResult) in
//            print("secondMethod --> 请求头 --> returnResult = \(returnResult)")
//        }
        
        

    }
    //post进行请求
    func setRquest(string:NSString) -> Bool {
//        {
//            filter = "";
//            identity = "";
//            request = "<M_VersionUP_1_0><MacCode>ED7E9A7D-1A52-4ACE-8A28-9579FA30955B</MacCode><Source>IOS</Source><InitialKey>55991838</InitialKey><UPType>I</UPType><AppKey>appyeego.shanglvt</AppKey><VerifyCode>343492c049488b355f8a11a7b2f640bd</VerifyCode></M_VersionUP_1_0>";
//        }
        let parameters = ["filter":"www","identity":"","request":"参数"]
        Alamofire.request("http://mapi2.yeegoyun.com/ServiceApp.svc/", method: .post, parameters: parameters).responseJSON { (respond) in
            if let JSON = respond.result.value {
                print("JSON: \(JSON)")
            }
        }
   
     return false
    }
    func creatRequest()  {
        var urlString = "https://httpbin.org/get";
        let parameters: Parameters = [
            "foo": [1,2,3],
            "bar": [
                "baz": "qux"
            ]
        ]
        let headers: HTTPHeaders = [
            "Authorization": "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==",
            "Accept": "application/json"
        ]
        Alamofire.request(urlString, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseJSON { (respond) in
            if let JSON = respond.result.value {
                print("JSON: \(JSON)")
            }
            
        }
    }
    
    //上传图片或者文件
    func updateFile() {
        let fileURL = Bundle.main.url(forResource: "video", withExtension: "mov")
        
        Alamofire.upload(fileURL!, to: "https://httpbin.org/post").responseJSON { response in
            debugPrint(response)
        }
        let  image  = UIImage()
        
        let imageData = UIImagePNGRepresentation(image)
        
        Alamofire.upload(imageData!, to: "https://httpbin.org/post").responseJSON { response in
            debugPrint(response)
        }

    }
   //    func loadData() {
//        
//
//        ｝
    func getTapPoint(sender:UITapGestureRecognizer) {
        var point = CGPoint()
        
        point = sender.location(in: self.view)
        NSLog("%@", sender)
        NSLog("point.x====%@", point.x)
        NSLog("point.y===%@", point.y)
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
