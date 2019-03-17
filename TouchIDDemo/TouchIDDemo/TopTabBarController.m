//
//  TopTabBarController.m
//  TouchIDDemo
//
//  Created by 笨孩子不笨 on 2018/1/17.
//  Copyright © 2018年 Lee2Go. All rights reserved.
//

#import "TopTabBarController.h"
#import "BaseViewController.h"
#import "TopTabBar.h"
#import "HomeController.h"
#import "MeController.h"
@interface TopTabBarController ()

@end

@implementation TopTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [self setupChildVc:[[MeController alloc]init] title:@"我的" image:nil selectedImage:nil];
    [self setupChildVc:[[HomeController alloc]init] title:@"主页" image:nil selectedImage:nil];
 
//    self.tabBar.frame = CGRectMake(0, 0, self.view.frame.size.height, 100);
//    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
//    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:15];
//    attrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
//
//    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
//    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
//    selectedAttrs[NSForegroundColorAttributeName] = [UIColor yellowColor];
//
//    UITabBarItem *item = [UITabBarItem appearance];
//    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
//    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
}
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置文字和图片
    vc.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.view.backgroundColor = [UIColor whiteColor];

    UINavigationController *nag = [[UINavigationController alloc] initWithRootViewController:vc];
    // 添加为子控制器
    [self addChildViewController:nag];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
