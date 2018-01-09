//
//  HRunTimeModels.m
//  Dispatch
//
//  Created by user on 17/3/21.
//  Copyright © 2017年 HuLiYin. All rights reserved.
//

#import "HRunTimeModels.h"

@implementation HRunTimeModels
static const char * RY_CLICKKEY = "ry_clickkey";
-(int)getPropertyArray
{
    unsigned int count;
//    //获取属性列表
    objc_property_t *propertyList = class_copyPropertyList([self class], &count);
    for (unsigned int i=0; i<count; i++) {
        const char *propertyName = property_getName(propertyList[i]);
        NSLog(@"property---->%@", [NSString stringWithUTF8String:propertyName]);
    }
    
//    //获取方法列表
//    Method *methodList = class_copyMethodList([self class], &count);
//    for (unsigned int i; i<count; i++) {
//        Method method = methodList[i];
//        NSLog(@"method---->%@", NSStringFromSelector(method_getName(method)));
//    }
    
//    //获取成员变量列表
//    Ivar *ivarList = class_copyIvarList([self class], &count);
//    for (unsigned int i; i<count; i++) {
//        Ivar myIvar = ivarList[i];
//        const char *ivarName = ivar_getName(myIvar);
//        NSLog(@"Ivar---->%@", [NSString stringWithUTF8String:ivarName]);
//    }
//
//    //获取协议列表
//    __unsafe_unretained Protocol **protocolList = class_copyProtocolList([self class], &count);
//    for (unsigned int i; i<count; i++) {
//        Protocol *myProtocal = protocolList[i];
//        const char *protocolName = protocol_getName(myProtocal);
//        NSLog(@"protocol---->%@", [NSString stringWithUTF8String:protocolName]);
//    }
    return count;
 
}
- (void)setRy_time:(NSTimeInterval)ry_time{
    objc_setAssociatedObject(self, RY_CLICKKEY, @(ry_time), OBJC_ASSOCIATION_ASSIGN);
}
- (NSTimeInterval)ry_time{
    return [objc_getAssociatedObject(self, RY_CLICKKEY) doubleValue];
}
void study(id reccevier, SEL sel) {
    
}
// 如果调用的方法没有实现，就会走这个方法
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == @selector(getDic:)) {
        class_addMethod(self, @selector(study), (IMP)study, "v@:");
    }
    return [super resolveInstanceMethod:sel];
}
-(void)study
{
    NSLog(@"进来了");
}




-(SEL) creatGetterWithPropertyName: (NSString *) propertyName{
    
    //1.返回get方法: oc中的get方法就是属性的本身
    return NSSelectorFromString(propertyName);
}

///通过运行时获取当前对象的所有属性的名称，以数组的形式返回
- (NSArray *) allPropertyNames{
    ///存储所有的属性名称
    NSMutableArray *allNames = [[NSMutableArray alloc] init];
    
    ///存储属性的个数
    unsigned int propertyCount = 0;
    
    ///通过运行时获取当前类的属性
    objc_property_t *propertys = class_copyPropertyList([self class], &propertyCount);
    //    objc_property_t *propretyss = class_copyPropertyList([self class], &propertyCount);
    //    for (int i=0; i<propertyCount;i++) {
    //        objc_property_t proprty = propretyss[i];
    //        const char *name = property_getName(proprty);
    //        [allNames addObject:[NSString stringWithUTF8String:name]];
    //
    //    }
    //    free(propretyss);
    //把属性放到数组中
    for (int i = 0; i < propertyCount; i ++) {
        ///取出第一个属性
        objc_property_t property = propertys[i];
        
        const char * propertyName = property_getName(property);
        
        [allNames addObject:[NSString stringWithUTF8String:propertyName]];
    }
    
    ///释放
    free(propertys);
    
    
    return allNames;
}


-(NSArray*)displayCurrentModleProperty{
    NSMutableArray *arrayCount = [[NSMutableArray alloc]init];
    //获取实体类的属性名
    NSArray *array = [self allPropertyNames];
    
    //拼接参数
    NSMutableString *resultString = [[NSMutableString alloc] init];
    
    for (int i = 0; i < array.count; i ++) {
        
        //获取get方法
        SEL getSel = [self creatGetterWithPropertyName:array[i]];
        
        if ([self respondsToSelector:getSel]) {
            
            //获得类和方法的签名
            NSMethodSignature *signature = [self methodSignatureForSelector:getSel];
            
            //从签名获得调用对象
            NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
            
            //设置target
            [invocation setTarget:self];
            
            //设置selector
            [invocation setSelector:getSel];
            
            //接收返回的值
            NSObject *__unsafe_unretained returnValue = nil;
            
            //调用
            [invocation invoke];
            
            //接收返回值
            [invocation getReturnValue:&returnValue];
            
            [resultString appendFormat:@"%@\n", returnValue];
            NSString *string = [NSString stringWithFormat:@"%@",returnValue];
            [arrayCount addObject:string];
        }
    }
    //注释 NSLog(@"%@", resultString);
    return  arrayCount;
}

@end
