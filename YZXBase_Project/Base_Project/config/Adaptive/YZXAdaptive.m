//
//  PHIAdaptive.m
//  Base_Project
//
//  Created by 尹星 on 2018/5/31.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "YZXAdaptive.h"

@implementation YZXAdaptive

+ (CGFloat)adaptiveWidth:(CGFloat)width
{
    return width * YZXSCREEN_WIDTH / 375.0;
}

+ (CGFloat)adaptiveHeight:(CGFloat)height
{
    return height * YZXSCREEN_HEIGHT / 667.0;
}

+ (CGPoint)adaptivePoint:(CGPoint)point
{
    return CGPointMake([self adaptiveWidth:point.x], [self adaptiveHeight:point.y]);
}

+ (CGRect)adaptiveRect:(CGRect)rect
{
    return CGRectMake([self adaptiveWidth:rect.origin.x], [self adaptiveHeight:rect.origin.y], [self adaptiveWidth:rect.size.width], [self adaptiveHeight:rect.size.height]);
}

+ (CGSize)adaptiveSize:(CGSize)size
{
    return CGSizeMake([self adaptiveWidth:size.width], [self adaptiveHeight:size.height]);
}


@end
