//
//  OpenCountDown.h
//  信通宝
//
//  Created by 年年青瑜 on 2016/11/16.
//  Copyright © 2016年 xinYuHeChuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OpenCountDown : NSObject
/** 按钮倒计时 */
+ (void)openCountDown:(NSInteger)timer andButton:(UIButton *)btn title:(NSString *)title otherTitle:(NSString *)otherTitle;

/** 短信倒计时 */
+ (void)openDown:(NSInteger)timer andButton:(UIButton *)btn title:(NSString *)title;
@end
