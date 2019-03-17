//
//  LoginView.h
//  TouchIDDemo
//
//  Created by 笨孩子不笨 on 2018/1/18.
//  Copyright © 2018年 Lee2Go. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginView : UIView
/*! 账户icon */
@property(nonatomic, strong)UIImageView *imageView_username;
/*! 账户文本 */
@property(nonatomic, strong)UITextField *textField_username;
/*! 分割线1 */
@property(nonatomic, strong)UIView      *view_bottomLine1;
/*! 密码icon */
@property(nonatomic, strong)UIImageView *imageView_password;
/*! 密码文本 */
@property(nonatomic, strong)UITextField *textField_password;
/*! 分割线2 */
@property(nonatomic, strong)UIView      *view_bottomLine2;
/*! 注册按钮 */
@property(nonatomic, strong)UIButton    *button_registered;
/*! 找回密码按钮 */
@property(nonatomic, strong)UIButton    *button_retrievePassword;
/*! 登录按钮 */
@property(nonatomic, strong)UIButton    *button_login;
@end
