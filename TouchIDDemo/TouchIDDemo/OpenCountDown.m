//
//  OpenCountDown.m
//  信通宝
//
//  Created by 年年青瑜 on 2016/11/16.
//  Copyright © 2016年 xinYuHeChuang. All rights reserved.
//

#import "OpenCountDown.h"

@implementation OpenCountDown
+ (void)openCountDown:(NSInteger)timer andButton:(UIButton *)btn title:(NSString *)title otherTitle:(NSString *)otherTitle
{
         __block NSInteger time = timer; //倒计时时间
         
         dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
         dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
         
         dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); //每秒执行
         
         dispatch_source_set_event_handler(_timer, ^{
                  
                  if(time <= 0){ //倒计时结束，关闭
                           
                           dispatch_source_cancel(_timer);
                           dispatch_async(dispatch_get_main_queue(), ^{
                                    
                                    //设置按钮的样式
                                    [btn setTitle:title forState:UIControlStateNormal];
                                    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                                    btn.userInteractionEnabled = YES;
                           });
                           
                  }else{
                           
//                           NSInteger seconds = timer % 60;
                           dispatch_async(dispatch_get_main_queue(), ^{
                                    
                                    //设置按钮显示读秒效果
                                    [btn setTitle:[NSString stringWithFormat:@"%@", otherTitle] forState:UIControlStateNormal];
                                    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
                                    btn.userInteractionEnabled = NO;
                           });
                           time--;
                  }
         });
         dispatch_resume(_timer);
}

+ (void)openDown:(NSInteger)timer andButton:(UIButton *)btn title:(NSString *)title
{
         __block NSInteger time = timer; //倒计时时间
         
         dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
         dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
         
         dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); //每秒执行
         
         dispatch_source_set_event_handler(_timer, ^{
                  
                  if(time <= 0){ //倒计时结束，关闭
                           
                           dispatch_source_cancel(_timer);
                           dispatch_async(dispatch_get_main_queue(), ^{
                                    
                                    //设置按钮的样式
                                    [btn setTitle:title forState:UIControlStateNormal];
                                    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                                    btn.userInteractionEnabled = YES;
                           });
                           
                  }else{
                           
                           NSInteger seconds = time % 60;
                           dispatch_async(dispatch_get_main_queue(), ^{
                                    
                                    //设置按钮显示读秒效果
                                    [btn setTitle:[NSString stringWithFormat:@"重新发送(%.2ld)", (long)seconds] forState:UIControlStateNormal];
                                    btn.titleLabel.font = [UIFont systemFontOfSize:10];
                                    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
                                    btn.userInteractionEnabled = NO;
                           });
                           time--;
                  }
         });
         dispatch_resume(_timer);
}

@end
