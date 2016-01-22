//
//  QYThirdViewController.m
//  01-UIViewContollerDemo
//
//  Created by qingyun on 15/12/26.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYThirdViewController.h"

@interface QYThirdViewController ()

@end

@implementation QYThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    //添加事件监听（点击）
    [btn addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}
-(void)back:(UIButton *)btn{
    //消失
    [self dismissViewControllerAnimated:YES completion:nil];
}
//view将要显示的时候调用
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"%s",__func__);
}

//view已经显示的时候调用
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"%s",__func__);
}

//view将要消失的时候调用
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"%s",__func__);
}

//view已经消失的时候调用
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"%s",__func__);
}

@end
