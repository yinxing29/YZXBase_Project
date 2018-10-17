//
//  UIButton+TitleAndImageType.h
//  Replenishment
//
//  Created by 尹星 on 2017/6/21.
//  Copyright © 2017年 ruwang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, PHIButtonEdgeInsetsStyle) {
    PHIButtonEdgeInsetsStyleTop, // image在上，label在下
    PHIButtonEdgeInsetsStyleLeft, // image在左，label在右
    PHIButtonEdgeInsetsStyleBottom, // image在下，label在上
    PHIButtonEdgeInsetsStyleRight // image在右，label在左
};

@interface UIButton (TitleImageEdgeInsets)

/**
 *  设置button的titleLabel和imageView的布局样式，及间距
 *
 *  @param style titleLabel和imageView的布局样式
 *  @param space titleLabel和imageView的间距
 */
- (void)layoutButtonWithEdgeInsetsStyle:(PHIButtonEdgeInsetsStyle)style
                        imageTitleSpace:(CGFloat)space;

@end
