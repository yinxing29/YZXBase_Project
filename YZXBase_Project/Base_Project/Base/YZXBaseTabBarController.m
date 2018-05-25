//
//  YZXBaseTabBarController.m
//  YZX_Base_Project
//
//  Created by 尹星 on 2018/5/24.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "YZXBaseTabBarController.h"
#import "YZXHomeViewController.h"
#import "YZXMallViewController.h"
#import "YZXFoundViewController.h"
#import "YZXMeViewController.h"
#import "YZXBaseNavigationController.h"

@interface YZXBaseTabBarController ()

@end

@implementation YZXBaseTabBarController

- (instancetype)initTabBarController
{
    self = [super init];
    if (self) {
        YZXHomeViewController *home = [[YZXHomeViewController alloc] init];
        YZXBaseNavigationController *navHome = [[YZXBaseNavigationController alloc] initWithRootViewController:home];
        YZXMallViewController *mall = [[YZXMallViewController alloc] init];
        YZXBaseNavigationController *navMall = [[YZXBaseNavigationController alloc] initWithRootViewController:mall];
        YZXFoundViewController *found = [[YZXFoundViewController alloc] init];
        YZXBaseNavigationController *navFound = [[YZXBaseNavigationController alloc] initWithRootViewController:found];
        YZXMeViewController *me = [[YZXMeViewController alloc] init];
        YZXBaseNavigationController *navMe = [[YZXBaseNavigationController alloc] initWithRootViewController:me];
        [self setTabBarItemViewController:navHome
                                    title:@"首页"
                          normalImageName:@"icon_home"
                     highlightedImageName:@"icon_home_selected"];
        [self setTabBarItemViewController:navMall
                                    title:@"商城"
                          normalImageName:@"icon_shopping"
                     highlightedImageName:@"icon_shopping_selected"];
        [self setTabBarItemViewController:navFound
                                    title:@"发现"
                          normalImageName:@"icon_community"
                     highlightedImageName:@"icon_community_selected"];
        [self setTabBarItemViewController:navMe
                                    title:@"我的"
                          normalImageName:@"icon_me"
                     highlightedImageName:@"icon_me_selected"];
        self.viewControllers = @[navHome,navMall,navFound,navMe];
    }
    return self;
}

- (void)setTabBarItemViewController:(UIViewController *)vc
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
