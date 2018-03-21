//
//  LoginView.m
//  TouchIDDemo
//
//  Created by 笨孩子不笨 on 2018/1/18.
//  Copyright © 2018年 Lee2Go. All rights reserved.
//

#import "LoginView.h"
IB_DESIGNABLE
@implementation LoginView
- (instancetype)initWithFrame:(CGRect)frame
{
    if([super initWithFrame:frame])
    {
        [self addUI];
    }
    return self;
}
- (void)addUI
{
    self.imageView_username = ({
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.backgroundColor = [UIColor redColor];
        [self addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_top).offset(100*SCALEY);
            make.left.equalTo(self.mas_left).offset(40*SCALEX);
            make.right.equalTo(self.mas_left).offset(60*SCALEX);
            make.bottom.equalTo(self.mas_top).offset(120*SCALEY);
        }];
        imageView;
    });
    self.textField_username = ({
        UITextField *textField = [[UITextField alloc] init];
        textField.backgroundColor = [UIColor lightGrayColor];
        textField.placeholder = @"请输入您的账号";
        textField.keyboardType = UIKeyboardTypeNumberPad;
        [self addSubview:textField];
        [textField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_top).offset(100*SCALEY);
            make.left.equalTo(self.imageView_username.mas_right).offset(5*SCALEX);
            make.right.equalTo(self.mas_right).offset(-40*SCALEX);
            make.bottom.equalTo(self.mas_top).offset(120*SCALEY);
        }];
        textField;
    });
    self.view_bottomLine1 = ({
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor blackColor];
        [self addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.textField_username.mas_bottom).offset(5*SCALEY);
            make.left.equalTo(self.mas_left).offset(40*SCALEX);
            make.right.equalTo(self.mas_right).offset(-40*SCALEX);
            make.bottom.equalTo(self.textField_username.mas_bottom).offset(6*SCALEY);
        }];
        view;
    });
    self.imageView_password = ({
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.backgroundColor = [UIColor redColor];
        [self addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view_bottomLine1.mas_bottom).offset(5*SCALEY);
            make.left.equalTo(self.mas_left).offset(40*SCALEX);
            make.right.equalTo(self.mas_left).offset(60*SCALEX);
            make.bottom.equalTo(self.view_bottomLine1.mas_bottom).offset(25*SCALEY);
        }];
        imageView;
    });
    self.textField_password = ({
        UITextField *textField = [[UITextField alloc] init];
        textField.backgroundColor = [UIColor lightGrayColor];
        textField.placeholder = @"请输入您的密码";
        [textField setSecureTextEntry:YES];
        textField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
        [self addSubview:textField];
        [textField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view_bottomLine1).offset(5*SCALEY);
            make.left.equalTo(self.imageView_password.mas_right).offset(5*SCALEX);
            make.right.equalTo(self.mas_right).offset(-40*SCALEX);
            make.bottom.equalTo(self.view_bottomLine1).offset(25*SCALEY);
        }];
        textField;
    });
    self.view_bottomLine2 = ({
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor blackColor];
        [self addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.textField_password.mas_bottom).offset(5*SCALEY);
            make.left.equalTo(self.mas_left).offset(40*SCALEX);
            make.right.equalTo(self.mas_right).offset(-40*SCALEX);
            make.bottom.equalTo(self.textField_password.mas_bottom).offset(6*SCALEY);
        }];
        view;
    });
    self.button_registered = ({
        UIButton *button = [[UIButton alloc] init];
        [button setTitle:@"注册" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor redColor]];
        button.titleLabel.font = [UIFont systemFontOfSize:13.0];
        [button sizeToFit];
        [self addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view_bottomLine2.mas_bottom).offset(5*SCALEY);
            make.left.equalTo(self.mas_left).offset(40*SCALEX);
            make.bottom.equalTo(self.view_bottomLine2.mas_bottom).offset(25*SCALEY);
        }];
        button;
    });
    self.button_retrievePassword = ({
        UIButton *button = [[UIButton alloc] init];
        [button setTitle:@"忘记密码?" forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor redColor]];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:13.0];
        [button sizeToFit];
        [self addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view_bottomLine2.mas_bottom).offset(5*SCALEY);
            make.right.equalTo(self.mas_right).offset(-40*SCALEX);
            make.bottom.equalTo(self.view_bottomLine2.mas_bottom).offset(25*SCALEY);
        }];
        button;
    });
    self.button_login = ({
        UIButton *button = [[UIButton alloc] init];
        [button setTitle:@"登录" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [button setBackgroundColor:[UIColor blueColor]];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:13.0];
        [self addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.button_registered.mas_bottom).offset(5*SCALEY);
            make.left.equalTo(self.mas_left).offset(40*SCALEX);
            make.right.equalTo(self.mas_right).offset(-40*SCALEX);
            make.bottom.equalTo(self.button_registered.mas_bottom).offset(25*SCALEY);
        }];
        button;
    });
}
@end
