//
//  YZXBaseViewController.m
//  yzx_Base_Project
//
//  Created by 尹星 on 2018/5/24.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "YZXBaseViewController.h"

@interface YZXBaseViewController ()

@end

@implementation YZXBaseViewController

- (void)yzx_settingNavigationBarBackgroundColor:(UIColor *)color
                                          alpha:(double)alpha
{
    UIImage *image;
    if (!color) {
        image = [UIImage new];
    }else {
        image = [self p_drawImageWithColor:color
                                     alpha:alpha];
    }
    [self.navigationController.navigationBar setBackgroundImage:image
                                                      forBarMetrics:UIBarMetricsDefault];
}

- (void)yzx_hideNavigationBarSplitLine:(BOOL)isHide
{
    if (isHide) {
        [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    }else {
        [self.navigationController.navigationBar setShadowImage:nil];
    }
}

- (void)yzx_hideTabBarSplitLine:(BOOL)isHide
{
    if (self.tabBarController && isHide) {
        [self.tabBarController.tabBar setShadowImage:[UIImage new]];
        [self.tabBarController.tabBar setBackgroundImage:[UIImage new]];
    }else {
        [self.tabBarController.tabBar setShadowImage:nil];
        [self.tabBarController.tabBar setBackgroundImage:nil];
    }
}

- (void)yzx_settingTitleColor:(UIColor *)color
                         font:(UIFont *)font
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    if (color) {
        [dic setObject:color forKey:NSForegroundColorAttributeName];
    }
    if (font) {
        [dic setObject:font forKey:NSFontAttributeName];
    }
    self.navigationController.navigationBar.titleTextAttributes = dic;
}

- (UIImage *)p_drawImageWithColor:(UIColor *)color
                          alpha:(double)alpha
{
    //颜色修改透明度
    double r,g,b,a;
    [color getRed:&r green:&g blue:&b alpha:&a];
    UIColor *showColor = [UIColor colorWithRed:r green:g blue:b alpha:alpha];
    
    CGRect rect = CGRectMake(0, 0, 10, 10);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, showColor.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
