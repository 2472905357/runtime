//
//  HmodleD.m
//  Dispatch
//
//  Created by user on 16/11/3.
//  Copyright © 2016年 HuLiYin. All rights reserved.
//

#import "HmodleD.h"

@implementation HmodleD
-(instancetype)init
{
   self =  [super init];
    if (self) {
        
    }
    return self;
}
/***设置重置代理的方法**/
-(void)setDelegate:(id)delegate
{
    if ([self respondsToSelector:@selector(setMyValue:)]) {
        [delegate setMyValue:2];
    }
    if ([self respondsToSelector:@selector(reciveString:)]) {
       [self reciveString: [delegate reciveString:@""]];
    }
}
//+(instancetype)initShare
//{
//   static HmodleD *share = nil;
//   static dispatch_once_t oncet;
//    dispatch_once(&oncet, ^{
//        share = [[HmodleD alloc]init];
//        
//    });
//   
//    [share setMyValue:1];
////    [share reciveString:@"d"];
//    return share;
//}
-(void)setMyValue:(NSInteger)value
{
    
}
-(NSString *)reciveString:(NSString *)string
{
//    NSLog(@"ddddaaa");
    NSLog(@"%@",string);
    return string;
}
@end
