//
//  Himage.m
//  Dispatch
//
//  Created by user on 17/3/21.
//  Copyright © 2017年 HuLiYin. All rights reserved.
//

#import "Himage.h"

@implementation Himage
+ (void)load {
    Method imageMethodNamed = class_getClassMethod(self, @selector(imageNamed:));
    Method myImageMethodNamed = class_getClassMethod(self, @selector(customImageNamed:));
    //实现两个方法的交换
    method_exchangeImplementations(myImageMethodNamed,imageMethodNamed);
}
//交换方法实现新的方法
+ (instancetype)customImageNamed:(NSString *)name {
    //实际调用的是imageNamed:
    Himage *image = [Himage customImageNamed:name];
    //*此处为自定义配置*
    return image;
}
@end
