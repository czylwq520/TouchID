//
//  MaskView.m
//  TouchIDDemo
//
//  Created by 笨孩子不笨 on 2018/1/17.
//  Copyright © 2018年 Lee2Go. All rights reserved.
//

#import "MaskView.h"

@implementation MaskView
- (instancetype)initWithFrame:(CGRect)frame
{
    if([super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor blueColor];
        self.alpha = 0.1;
    }
    return self;
}
@end
