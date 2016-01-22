//
//  ViewController.m
//  04-弹出视图
//
//  Created by qingyun on 15/12/26.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "UIAlertViewController.h"

@interface UIAlertViewController ()<UIAlertViewDelegate>

@end

@implementation UIAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)click:(UIButton *)sender {
    //创建一个UIAlertView
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"温馨提醒" message:@"请充值，推荐使用青云支付，尊享8折优惠" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定",@"考虑一下", nil];
    //设置样式
    alertView.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    //显示AlertView
    [alertView show];
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    UITextField *userName = [alertView textFieldAtIndex:0];
    UITextField *passWord = [alertView textFieldAtIndex:1];
    if (buttonIndex == 1) {
        NSLog(@"用户名：%@,密码：%@",userName.text,passWord.text);
    }
    
}

//设置第一个otherBtn的enable
- (BOOL)alertViewShouldEnableFirstOtherButton:(UIAlertView *)alertView{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
