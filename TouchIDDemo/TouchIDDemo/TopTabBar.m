//
//  TopTabBar.m
//  TouchIDDemo
//
//  Created by 笨孩子不笨 on 2018/1/17.
//  Copyright © 2018年 Lee2Go. All rights reserved.
//

#import "TopTabBar.h"

@implementation TopTabBar

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.frame = CGRectMake(0, 64, self.bounds.size.width, self.bounds.size.height);
    [self setBarTintColor:[UIColor blackColor]];
    
    //加上这句代码,那么TabBarController底部也会出现导航条
    //self.translucent = NO;
}

@end
