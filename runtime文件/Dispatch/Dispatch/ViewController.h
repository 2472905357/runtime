//
//  ViewController.h
//  Dispatch
//
//  Created by user on 16/10/14.
//  Copyright © 2016年 HuLiYin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,strong)void(^block)(NSString *string);
-(void)getStringS:(void(^)(NSString *))seccuess;
-(void)getsecuss:(void(^)(NSDictionary *))success;
-(void)ceshi:(void(^)(NSArray *))suucess;
@end

