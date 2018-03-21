//
//  characterLengthLimit.m
//  信通宝
//
//  Created by 年年青瑜 on 2016/11/15.
//  Copyright © 2016年 xinYuHeChuang. All rights reserved.
//

#import "characterLengthLimit.h"

@implementation characterLengthLimit
+ (NSString *)textFieldLengthLimit:(UITextField *)textField andRange:(NSRange)rangeLimit
{
         NSString *lang = [[UITextInputMode currentInputMode] primaryLanguage];
         NSRange range = rangeLimit;
         if ([lang isEqualToString:@"zh-Hans"]) {//如果输入的时中文
                  UITextRange *selectedRange = [textField markedTextRange];
                  UITextPosition *position = [textField positionFromPosition:selectedRange.start offset:0];
                  if (!position)
                  {
                           if (textField.text.length > rangeLimit.length)
                           {
                                    //                self.tagNameTextField.text = [self.tagNameTextField.text substringFrom:0 to:Max_Character_Num];
                                    
                                    textField.text = [textField.text substringWithRange:range];
                           }
                          
                  }
                  return textField.text;
         }
         else
         {
                  if (textField.text.length > rangeLimit.length)
                  {
                           textField.text = [textField.text substringWithRange:range];
                  }
                  return textField.text;
         }
}
//// textField代理方法
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
//    // string.length为0，表明没有输入字符，应该是正在删除，应该返回YES。
//    if (string.length == 0) {
//        return YES;
//    }
//    // length为当前输入框中的字符长度
//    NSUInteger length = textField.text.length + string.length;
//    // 如果该页面中还有其他的输入框，则需要做这个判断
//    if (textField == self.idNumberTextField) {
//        // str为当前输入框中的字符
//        NSString *str = [NSString stringWithFormat:@"%@%@", textField.text, string];
//        // 当输入到17位数的时候，通过theLastIsX方法判断最后一位是不是X
//        if (length == 17 && [self theLastIsX:str]) {
//            // 如果是17位，并通过前17位计算出18位为X，自动补全，并返回NO，禁止编辑。
//            textField.text = [NSString stringWithFormat:@"%@%@X", textField.text, string];
//            return NO;
//        }
//        // 如果是其他情况则直接返回小于等于18（最多输入18位）
//        return length <= 18;
//    }
//    return YES;
//}
//// 判断最后一个是不是X
//- (BOOL)theLastIsX:(NSString *)IDNumber {
//    NSMutableArray *IDArray = [NSMutableArray array];
//    for (int i = 0; i < 17; i++) {
//        NSRange range = NSMakeRange(i, 1);
//        NSString *subString = [IDNumber substringWithRange:range];
//        [IDArray addObject:subString];
//    }
//    NSArray *coefficientArray = [NSArray arrayWithObjects:@"7", @"9", @"10", @"5", @"8", @"4", @"2", @"1", @"6", @"3", @"7", @"9", @"10", @"5", @"8", @"4", @"2", nil];
//    int sum = 0;
//    for (int i = 0; i < 17; i++) {
//        int coefficient = [coefficientArray[i] intValue];
//        int ID = [IDArray[i] intValue];
//        sum += coefficient * ID;
//    }
//    if (sum % 11 == 2) return YES;
//    else return NO;
//}

@end
