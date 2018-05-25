//
//  YZXBaseViewController.m
//  YZX_Base_Project
//
//  Created by 尹星 on 2018/5/24.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "YZXBaseViewController.h"

@interface YZXBaseViewController ()

@end

@implementation YZXBaseViewController

- (void)settingNavigationBarBackgroundColor:(UIColor *)color
{
    if (color) {
        [self.navigationController.navigationBar setBarTintColor:color];
    }else {
        [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                      forBarMetrics:UIBarMetricsDefault];
    }
}

- (void)hideNavigationBarSplitLine:(BOOL)isHide
{
    if (isHide) {
        [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    }else {
        [self.navigationController.navigationBar setShadowImage:nil];
    }
}

- (CGFloat)YZX_width
{
    return self.view.frame.size.width;
}

- (CGFloat)YZX_height
{
    return self.view.frame.size.height;
}

- (CGFloat)YZX_x
{
    return self.view.frame.origin.x;
}

- (CGFloat)YZX_y
{
    return self.view.frame.origin.y;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
