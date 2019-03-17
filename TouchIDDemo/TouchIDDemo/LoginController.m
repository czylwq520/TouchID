//
//  LoginController.m
//  TouchIDDemo
//
//  Created by 笨孩子不笨 on 2018/1/17.
//  Copyright © 2018年 Lee2Go. All rights reserved.
//

#import "LoginController.h"
#import <LocalAuthentication/LocalAuthentication.h>
#import "FingerprintLanding.h"
#import "BaseTabBarController.h"
#import "LoginView.h"
#import "LoginModel.h"
#import "RegisteredController.h"

@interface LoginController ()
@property (nonatomic, strong)LoginView *loginView;
@property (nonatomic)LoginModel *loginModel;
@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];

//    self.loginModel = [[LoginModel alloc] init];
    self.loginView = [[LoginView alloc] init];
    self.view = self.loginView;
    [self setLoginBtnState:NO];
    [self.loginView.textField_username addTarget:self action:@selector(usernameTextFieldChange:) forControlEvents:UIControlEventEditingChanged];
    
    [self.loginView.textField_password addTarget:self action:@selector(passwordTextFieldChange:) forControlEvents:UIControlEventEditingChanged];
    
    [self.loginView.button_registered addTarget:self action:@selector(turnUpRegisterController) forControlEvents:UIControlEventTouchUpInside];
    
    
    FingerprintLanding *fing = [[FingerprintLanding alloc] init];
    [fing validationOfTheFingerprint];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(InfoNotificationAction:) name:@"InfoNotification" object:nil];
    
}


- (void)turnUpRegisterController
{
    RegisteredController *registerVC = [[RegisteredController alloc] init];
    registerVC.view.backgroundColor = [UIColor blueColor];
    
    [registerVC setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:registerVC animated:YES completion:nil];
}
#pragma mark - 账户文本改变
- (void)usernameTextFieldChange:(UITextField *)textField
{
    self.loginView.textField_username.text = [characterLengthLimit textFieldLengthLimit:self.loginView.textField_username andRange:NSMakeRange(0, 11)];
     if (self.loginView.textField_password.text.length >0&&self.loginView.textField_username.text.length> 0) {
        [self setLoginBtnState:YES];
    }
    else
    {
        [self setLoginBtnState:NO];
    }
}
#pragma mark - 账户文本改变
- (void)passwordTextFieldChange:(UITextField *)textField
{
    self.loginModel.string_username = [characterLengthLimit textFieldLengthLimit:self.loginView.textField_password andRange:NSMakeRange(0, 11)];
    if(self.loginView.textField_password.text.length>0&&self.loginView.textField_username.text.length>0) {
        [self setLoginBtnState:YES];
    }
    else
    {
        [self setLoginBtnState:NO];
    }
}
- (void)setLoginBtnState:(BOOL)canClick
{
    if (canClick)
    {
        self.loginView.button_login.userInteractionEnabled = YES;
        [self.loginView.button_login setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    else
    {
        self.loginView.button_login.userInteractionEnabled = NO;
        [self.loginView.button_login setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    }
}
- (void)InfoNotificationAction:(NSNotification *)notification{
    
    BaseTabBarController *baseVc = [[BaseTabBarController alloc] init];
    [SVProgressHUD showInfoWithStatus:@"登录中。。。"];
    MaskView *maskView = [[MaskView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:maskView];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [SVProgressHUD dismiss];
        [maskView removeFromSuperview];
         UIApplication.sharedApplication.delegate.window.rootViewController =baseVc;
        
    });
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
