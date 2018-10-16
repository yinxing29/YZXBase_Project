//
//  YZXBaseTabBarController.h
//  yzx_Base_Project
//
//  Created by 尹星 on 2018/5/24.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YZXBaseTabBarController : UITabBarController

- (instancetype)initTabBarController;

- (void)yzx_setTabBarItemViewController:(UIViewController *)vc
                                  title:(NSString *)title
                        normalImageName:(NSString *)normalImageName
                   highlightedImageName:(NSString *)highlightedImageName;

@end
