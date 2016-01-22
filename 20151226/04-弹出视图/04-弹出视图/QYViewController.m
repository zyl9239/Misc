//
//  UIAlertController.m
//  04-弹出视图
//
//  Created by qingyun on 15/12/26.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYViewController.h"

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //查看系统版本
    NSLog(@"当前设备系统版本:%@",[[UIDevice currentDevice]systemVersion]);
    // Do any additional setup after loading the view.
}
- (IBAction)click:(UIButton *)sender {
    //创建UIAlertController
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"温馨提醒" message:@"请充值！" preferredStyle:UIAlertControllerStyleActionSheet];
#if 0
    //添加textField
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"请输入用户名";
    }];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"请输入密码";
        textField.secureTextEntry = YES;
    }];

#endif
    //创建UIAlertAction
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        UITextField *username = alertController.textFields[0];
        UITextField *password = alertController.textFields[1];
        NSLog(@"去支付,用户名:%@,密码:%@",username.text,password.text);
    }];
    
    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"no" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        NSLog(@"没钱");
    }];
    
    //把alertAction添加在UIAlertController上
    [alertController addAction:okAction];
    [alertController addAction:noAction];
    
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
