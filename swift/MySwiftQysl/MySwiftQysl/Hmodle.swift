//
//  Hmodle.swift
//  MySwiftQysl
//
//  Created by user on 17/2/23.
//  Copyright © 2017年 HuLiYin. All rights reserved.
//

import UIKit

class Hmodle: NSObject {

//    cover = "http://vimg3.ws.126.net/image/snapshot/2017/2/D/3/VCD183KD3.jpg";
//    description = "";
//    length = 90;
//    "m3u8Hd_url" = "<null>";
//    "m3u8_url" = "http://flv2.bn.netease.com/tvmrepo/2017/2/L/U/ECD17RJLU/SD/movie_index.m3u8";
//    "mp4Hd_url" = "<null>";
//    "mp4_url" = "http://flv2.bn.netease.com/tvmrepo/2017/2/L/U/ECD17RJLU/SD/ECD17RJLU-mobile.mp4";
//    playCount = 0;
//    playersize = 0;
//    ptime = "2017-02-23 10:35:03";
//    replyBoard = "video_bbs";
//    replyid = CD17U3E8008535RB;
//    sectiontitle = "";
//    title = "\U300a\U5f02\U661f\U89c9\U9192\U300b\U9996\U66dd\U4e2d\U6587\U7279\U8f91\Uff0c\U4e13\U5bb6\U89e3\U8bf4\U706b\U661f\U7684\U79d8\U5bc6";
//    topicDesc = "\U7ed9\U4f60\U6700\U65b0\U4f60\U60f3\U770b\U7684 oh yeah\Uff01";
//    topicImg = "http://vimg2.ws.126.net/image/snapshot/2016/3/N/1/VBGV0ONN1.jpg";
//    topicName = "\U6211\U53eb\U9884\U544a\U7247";
//    topicSid = VBGV0ONMV;
//    vid = VCD17U3E8;
//    videoTopic =             {
//    alias = "\U7ed9\U4f60\U6700\U65b0\U4f60\U60f3\U770b\U7684 oh yeah\Uff01";
//    ename = T1460515715026;
//    tid = T1460515715026;
//    tname = "\U6211\U53eb\U9884\U544a\U7247";
//    "topic_icons" = "http://img2.cache.netease.com/m/newsapp/topic_icons/T1460515715026.png";
//};
//videosource = "\U65b0\U5a92\U4f53";


    var cover : String = ""
     var descriptionQ : String = ""
     var length : Int = 0
     var m3u8Hd_url : String = ""
     var playCount : Int = 0
     var videoTopic : NSDictionary = [:]
    var arrayMu = NSMutableArray()
    
    
    override init(){
        super.init()
//        self.setValuesForKeys(dic)
       
    }
    func setDicValue(dic:NSDictionary)  {
        
        let dicR =  dic as! [String:Any]
        self.cover = dicR["cover"] as! String
        self.descriptionQ = dicR["description"] as! String
        self.videoTopic = dicR["videoTopic"] as! NSDictionary
        self.arrayMu .add(self.videoTopic)
        NSLog("==count==%d===value==%@", self.arrayMu.count,self.arrayMu)
        NSLog("%@", self.videoTopic)
//        self.setValuesForKeys(dic as! [String : Any])
    }
//    description

}
