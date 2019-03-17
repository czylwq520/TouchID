//
//  characterLengthLimit.h
//  信通宝
//
//  Created by 年年青瑜 on 2016/11/15.
//  Copyright © 2016年 xinYuHeChuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface characterLengthLimit : NSObject
+ (NSString *)textFieldLengthLimit:(UITextField *)textField andRange:(NSRange)range;
@end
