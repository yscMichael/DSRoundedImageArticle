//
//  RoundThreeDemoViewController.m
//  DSImageViewRound
//
//  Created by dasheng on 16/1/6.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "RoundThreeDemoViewController.h"
#import "UIImageView+WebCache.h"
#import "UIButton+WebCache.h"
#import "RoundImageView.h"
#import "RoundImageButton.h"

@implementation RoundThreeDemoViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    UIScrollView *contentScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    contentScrollView.contentSize = CGSizeMake(self.view.frame.size.width, 2000);
    contentScrollView.scrollEnabled = YES;
    [self.view addSubview:contentScrollView];
    
    
    RoundImageView  *avatarImageView = [[RoundImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [avatarImageView setImage:[UIImage imageNamed:@"avatar"]];
    [contentScrollView addSubview:avatarImageView];
    
    
    NSString *imageUrl = @"http://t53-4.yunpan.360.cn/p2/800-600.1540425da8804644ac7fcae31ed0de69b5a33bc8_whjt_53_whjt3_t.993a0d.jpg?st=syWuhyPzwYT5ELjVEeCbDg&e=1454655430";
    
    //UIImageView ios9.0之前设置圆角是会产生离屏渲染的，9.0之后不会产生离屏渲染
    RoundImageView  *avatarImageViewUrl = [[RoundImageView alloc] initWithFrame:CGRectMake(100, 250, 100, 100)];
    [avatarImageViewUrl sd_setImageWithURL:[NSURL URLWithString:imageUrl] placeholderImage:[UIImage imageNamed:@"avatar"]];
    [contentScrollView addSubview:avatarImageViewUrl];
    
    
    //UIButton 只要设置了圆角都会产生离屏渲染
    RoundImageButton *avatarButton = [[RoundImageButton alloc] initWithFrame:CGRectMake(100, 400, 100, 100)];
    [avatarButton sd_setImageWithURL:[NSURL URLWithString:imageUrl] forState:UIControlStateNormal];
    [contentScrollView addSubview:avatarButton];
}

@end
