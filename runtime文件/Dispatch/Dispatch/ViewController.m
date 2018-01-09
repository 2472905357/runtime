//
//  ViewController.m
//  Dispatch
//
//  Created by user on 16/10/14.
//  Copyright © 2016年 HuLiYin. All rights reserved.
//

#import "ViewController.h"
#import "HmodleD.h"
#import "HlayoutView.h"
#import "HRunTimeModels.h"
#import "Himage.h"
@interface ViewController ()<HmodleDelegate>
{
    void(^blockString)(NSString *aaa);
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HmodleD*model = [[HmodleD alloc]init];
    model.delegate = self;
    HRunTimeModels *modelRunloop = [[HRunTimeModels alloc]init];
    modelRunloop.ry_time = 1.0f;
    NSLog(@"%@ ---%@",NSStringFromSelector(_cmd),modelRunloop);
    [modelRunloop getPropertyArray];
    [HRunTimeModels resolveInstanceMethod:@selector(getDic:)];
    [self runTimekVC];
    
//    blockString(4);
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"赋值" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, 100, 40);
    button.center = self.view.center;
    [button setBackgroundImage:[Himage imageNamed:@"phone"] forState:UIControlStateNormal];
    
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(butonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

//    [self queque];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)queque
{
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    NSBlockOperation *operation1 = [NSBlockOperation blockOperationWithBlock:^(){
        NSLog(@"执行第1次操作，线程：%@", [NSThread currentThread]);
    }];
    
    NSBlockOperation *operation2 = [NSBlockOperation blockOperationWithBlock:^(){
        NSLog(@"执行第2次操作，线程：%@", [NSThread currentThread]);
    }];
    // operation1依赖于operation2
    [operation1 addDependency:operation2];
    
    [queue addOperation:operation1];
    [queue addOperation:operation2];
}
//动态添加属性get 和set方法
void *key;
- (void)setScore:(float)score {
    
    //关联引用
    /**
     *  1.给哪个对象属性进行关联
     *  2.用来保存传入的值的指针(用于get方法获取值)
     *  3.传入的值(注意是对象类型)
     *  4.关联引用的策略(这个根据属性添加的修饰而定)
     */
    objc_setAssociatedObject([HRunTimeModels class], key, @(score), OBJC_ASSOCIATION_ASSIGN);
}
- (float)score {
    id score = objc_getAssociatedObject(self, key);
    return [score floatValue];
}
//动态赋值kvc模式
-(void)runTimekVC
{
    Class clazz = HRunTimeModels.class;
    unsigned int count = 0;
    
    HRunTimeModels *person = [[HRunTimeModels alloc]init];
    NSDictionary *dict = @{@"name":@"zhangsan",@"age":@19, @"height": @1.75};
    
    
    Ivar *ivars = class_copyIvarList(clazz, &count);
    for (int i = 0; i < count; i++) {
        const char *cname = ivar_getName(ivars[i]);
        NSString *name = [NSString stringWithUTF8String:cname];
        NSString *key = [name substringFromIndex:1];
        
        const char *coding = ivar_getTypeEncoding(ivars[i]); // 获取类型
        NSString *strCode = [NSString stringWithUTF8String:coding];
        id value = dict[key];
        if ([strCode isEqualToString:@"f"]) {// 判断类型是否是float
            value = @(0.0);
        }
        
        [person setValue:value forKey:key];
    }
    NSLog(@"%@", person);
}
/*** 练习线程***/
-(void)setDispatch
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"3");
        blockString = ^(NSString *string){
            [[NSUserDefaults standardUserDefaults]setObject:string forKey:@"key"];
            dispatch_async(dispatch_get_main_queue(), ^{
                
            });
        };
    });
    dispatch_sync(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"你好");
    });
    /**线程分组**/
    dispatch_queue_t queue=dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_group_t group = dispatch_group_create();
    dispatch_group_async(group, queue, ^{
        [NSThread sleepForTimeInterval:2];
        NSLog(@"group 2");
    });
    dispatch_group_async(group, queue, ^{
        [NSThread sleepForTimeInterval:3];
        NSLog(@"group3");
    });
/*****回到主线程*****/
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        NSLog(@"update UI");
    });
    NSLog(@"2");
}

-(void)setMyValue:(NSInteger)value
{
    
    NSLog(@"value===%ld",(long)value);
}
-(NSString *)reciveString:(NSString *)string
{
    NSLog(@"%@",string);
    return @"ddddd";
}
-(void)butonClick:(UIButton *)sender
{
    HlayoutView *view = [[HlayoutView alloc]init];
    
  
    view.frame  = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:view];
    
    
//    blockString(@"4");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
