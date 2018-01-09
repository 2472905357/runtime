//
//  HmodleD.h
//  Dispatch
//
//  Created by user on 16/11/3.
//  Copyright © 2016年 HuLiYin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HmodleD;
@protocol HmodleDelegate  <NSObject>
@optional//这个可以是required （代表必须的），也可以是optional（可选的）

-(void)setMyValue:(NSInteger)value;
-(NSString *)reciveString:(NSString *)string;
@end
@interface HmodleD : NSObject
//+(instancetype)initShare;
-(instancetype)init;
@property(nonatomic,strong)id delegate;
@end
