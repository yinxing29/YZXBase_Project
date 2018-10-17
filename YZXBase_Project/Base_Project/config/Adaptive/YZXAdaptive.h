//
//  PHIAdaptive.h
//  Base_Project
//
//  Created by 尹星 on 2018/5/31.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YZXAdaptive : NSObject

+ (CGRect)adaptiveRect:(CGRect)rect;
+ (CGSize)adaptiveSize:(CGSize)size;
+ (CGPoint)adaptivePoint:(CGPoint)point;
+ (CGFloat)adaptiveWidth:(CGFloat)width;
+ (CGFloat)adaptiveHeight:(CGFloat)height;

@end
