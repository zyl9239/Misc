//
//  ViewController.m
//  02-UIImageViewDemo
//
//  Created by qingyun on 15/12/26.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//更改高亮状态
-(void)changeState:(NSTimer *)timer{
    UIImageView *imageView = (UIImageView *)timer.userInfo;
    
    BOOL isHighlighted = imageView.highlighted;
    
    imageView.highlighted = !isHighlighted;
}

- (void)viewDidLoad {
    [super viewDidLoad];
#if 0
    //创建imageView
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:imageView];
    //普通状态的image
    UIImage *image = [UIImage imageNamed:@"dog1"];
    imageView.image = image;
    //高亮状态image
    UIImage *hImage = [UIImage imageNamed:@"dog2"];
    imageView.highlightedImage = hImage;
    //imageView.highlighted = YES;
    [NSTimer scheduledTimerWithTimeInterval:.2 target:self selector:@selector(changeState:) userInfo:imageView repeats:YES];
#endif
    //帧动画
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:imageView ];
    
    //创建一个可变的数据，来存放火焰图片
    NSMutableArray *images = [NSMutableArray array];
    for (int i = 1; i < 18; i++) {
        //获取图片的名称
        NSString *imageName = [NSString stringWithFormat:@"campFire%02d.gif",i];
        UIImage *image =  [UIImage imageNamed:imageName];
        [images addObject:image];
    }
    //对imageView的动画数组赋值
    imageView.animationImages = images;
    //设置动画时间
    imageView.animationDuration = 1;
    //设置动画重复次数
    imageView.animationRepeatCount = 0;
    //开始动画
    [imageView startAnimating];
    
    //使用定时器来创建飘落的雪花
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(snowFly) userInfo:nil repeats:YES];
}

//雪花飘落
-(void)snowFly{
    //创建雪花
    UIImage *image = [UIImage imageNamed:@"flake"];
    UIImageView *snow = [[UIImageView alloc] initWithImage:image];
    [self.view addSubview:snow];
    
    //获取屏幕的宽度
    int qyScreenW = [UIScreen mainScreen].bounds.size.width;
    int qyScreenH = [UIScreen mainScreen].bounds.size.height;
    
    //雪花的位置的x
    int x1 = arc4random() % qyScreenW;
    //雪花大小的倍数
    double scale = 1.0/(arc4random()%100 + 1) + 1.0;
    //雪花速度倍数
    double speed = 1.0/(arc4random()%100 + 1) + 1.0;
    
    //设置起始的frame
    snow.frame = CGRectMake(x1, -(30 * scale), 30 * scale, 30 * scale);
    [UIView animateWithDuration:5 * speed animations:^{
       int x2 = arc4random() % qyScreenW;
        snow.frame = CGRectMake(x2, qyScreenH - 50 * scale, 50 * scale, 50*scale);
    } completion:^(BOOL finished) {
        [snow removeFromSuperview];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
