//
//  HRunTimeModels.h
//  Dispatch
//
//  Created by user on 17/3/21.
//  Copyright © 2017年 HuLiYin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import<objc/runtime.h>
@interface HRunTimeModels : NSObject<NSCoding>
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)float height;
@property(nonatomic,assign)int age;
@property (assign,nonatomic)NSTimeInterval  ry_time;
-(void)getDic:(NSDictionary *)dic;
-(int )getPropertyArray;
-(SEL) creatGetterWithPropertyName: (NSString *) propertyName;
-(NSArray*)displayCurrentModleProperty;

@end
