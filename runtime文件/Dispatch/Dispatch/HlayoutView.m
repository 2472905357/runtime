//
//  HlayoutView.m
//  Dispatch
//
//  Created by user on 16/11/3.
//  Copyright © 2016年 HuLiYin. All rights reserved.
//

#import "HlayoutView.h"

@implementation HlayoutView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/
- (void)drawRect:(CGRect)rect {
    // Drawing code
    self.backgroundColor = [UIColor whiteColor];
    UIView *view = [[UIView alloc]initWithFrame:self.bounds];
    view.backgroundColor = [UIColor redColor];
//    [self addSubview:view];
    UILabel *lable = [[UILabel alloc]init];
    lable.frame = self.bounds;
    lable.backgroundColor = [UIColor whiteColor];
    lable.text = @"d";
    lable.textColor = [UIColor redColor];
    [self addSubview:lable];
}
@end
