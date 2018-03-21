//
//  LoginModel.m
//  TouchIDDemo
//
//  Created by 笨孩子不笨 on 2018/1/18.
//  Copyright © 2018年 Lee2Go. All rights reserved.
//

#import "LoginModel.h"

@implementation LoginModel
- (id)initWithUsername:(NSString *)username password:(NSString *)password
{
    if(self = [super init])
    {
        self.string_username = username;
        self.string_password = password;
    }
    return self;
}
@end
