//
//  QYFirstViewController.m
//  01-UIViewContollerDemo
//
//  Created by qingyun on 15/12/26.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYFirstViewController.h"

@interface QYFirstViewController ()

@end

@implementation QYFirstViewController
//指定初始化方法
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    return self;
}


-(void)loadView{
#if 0
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor blueColor];
    self.view = view;
    
    UIWebView *webView = [[UIWebView alloc] init];
    self.view = webView;
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
#endif
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    self.view = tableView;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view from its nib.
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
