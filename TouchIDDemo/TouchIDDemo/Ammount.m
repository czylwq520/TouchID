//
//  Ammount.m
//  信通宝
//
//  Created by 年年青瑜 on 2016/12/14.
//  Copyright © 2016年 xinYuHeChuang. All rights reserved.
//

#import "Ammount.h"

@implementation Ammount
+ (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
         if (string.length == 0) {
                  return YES;
         }
         //第一个参数，被替换字符串的range，第二个参数，即将键入或者粘贴的string，返回的是改变过后的新str，即textfield的新的文本内容
         NSString *checkStr = [textField.text stringByReplacingCharactersInRange:range withString:string];
         //正则表达式
         NSString *regex = @"^\\-?([1-9]\\d*|0)(\\.\\d{0,2})?$";
         return [self isValid:checkStr withRegex:regex];
}
//检测改变过的文本是否匹配正则表达式，如果匹配表示可以键入，否则不能键入
+ (BOOL) isValid:(NSString*)checkStr withRegex:(NSString*)regex
{
         NSPredicate *predicte = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
         return [predicte evaluateWithObject:checkStr];
}
@end
