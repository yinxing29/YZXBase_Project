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
{
    if (color) {
        [self.navigationController.navigationBar setBarTintColor:color];
    }else {
        [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                      forBarMetrics:UIBarMetricsDefault];
    }
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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
