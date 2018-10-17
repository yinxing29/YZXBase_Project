//
//  YZXBaseTabBarController.m
//  yzx_Base_Project
//
//  Created by 尹星 on 2018/5/24.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "YZXBaseTabBarController.h"
#import "YZXBaseNavigationController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface YZXBaseTabBarController ()

@end

@implementation YZXBaseTabBarController

- (instancetype)initTabBarController
{
    self = [super init];
    if (self) {
        FirstViewController *firstVC = [[FirstViewController alloc] init];
        YZXBaseNavigationController *firstNavigationN = [[YZXBaseNavigationController alloc] initWithRootViewController:firstVC];
        
        SecondViewController *secondVC = [[SecondViewController alloc] init];
        YZXBaseNavigationController *secondNavigationC = [[YZXBaseNavigationController alloc] initWithRootViewController:secondVC];
        
        [self yzx_setTabBarItemViewController:firstNavigationN
                                        title:@"first"
                              normalImageName:@"icon_home"
                         highlightedImageName:@"icon_home_selected"];
        [self yzx_setTabBarItemViewController:secondNavigationC
                                        title:@"second"
                              normalImageName:@"icon_community"
                         highlightedImageName:@"icon_community_selected"];
        
        self.viewControllers = @[firstNavigationN,secondNavigationC];
    }
    return self;
}

- (void)yzx_setTabBarItemViewController:(UIViewController *)vc
                                  title:(NSString *)title
                        normalImageName:(NSString *)normalImageName
                   highlightedImageName:(NSString *)highlightedImageName
{
    UITabBarItem *item = vc.tabBarItem;
    item.title = title;
    item.image = [[UIImage imageNamed:normalImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item.selectedImage = [[UIImage imageNamed:highlightedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
