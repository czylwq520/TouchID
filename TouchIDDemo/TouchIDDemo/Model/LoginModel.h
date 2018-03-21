//
//  LoginModel.h
//  TouchIDDemo
//
//  Created by 笨孩子不笨 on 2018/1/18.
//  Copyright © 2018年 Lee2Go. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginModel : NSObject
@property (nonatomic, copy)NSString *string_username;
@property (nonatomic, copy)NSString *string_password;
- (id)initWithUsername:(NSString *)username password:(NSString *)password;
@end
