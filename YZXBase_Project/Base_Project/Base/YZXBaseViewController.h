//
//  YZXBaseViewController.h
//  yzx_Base_Project
//
//  Created by 尹星 on 2018/5/24.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YZXBaseViewController : UIViewController

/**
 设置navigationBar的背景色

 @param color 为nil的时候为透明。否则为设置的颜色
 @param alpha 透明度
 */
- (void)yzx_settingNavigationBarBackgroundColor:(UIColor *)color
                                          alpha:(double)alpha;

/**
 是否隐藏navigationBar分割线

 @param isHide YES：隐藏，NO，不隐藏
 */
- (void)yzx_hideNavigationBarSplitLine:(BOOL)isHide;

/**
 是否隐藏tabBar分割线

 @param isHide YES：隐藏，NO，不隐藏
 */
- (void)yzx_hideTabBarSplitLine:(BOOL)isHide;

/**
 设置title样式
 
 @param color title文本颜色
 @param font title文本大小
 */
- (void)yzx_settingTitleColor:(UIColor *)color
                         font:(UIFont *)font;

@end
