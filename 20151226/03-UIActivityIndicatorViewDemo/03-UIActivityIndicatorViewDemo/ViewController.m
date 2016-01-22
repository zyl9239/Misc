//
//  ViewController.m
//  03-UIActivityIndicatorViewDemo
//
//  Created by qingyun on 15/12/26.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    //创建ActivityIndicatorView
    UIActivityIndicatorView *activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    activityView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:activityView];
    activityView.backgroundColor = [UIColor redColor];
    activityView.hidden = NO;
    
    //开始动画
    [activityView startAnimating];
    
    //延迟调用方法
    [activityView performSelector:@selector(stopAnimating) withObject:nil afterDelay:2];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
