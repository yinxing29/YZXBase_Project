//
//  UIColor+Extension.h
//  RunningMan
//
//  Created by Seven Lv on 15/12/29.
//  Copyright © 2015年 Toocms. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (YZXHexadecimal)

+ (UIColor *)hexColor:(NSString *)hex;
+ (UIColor *)hexColor:(NSString *)hex
                alpha:(double)alpha;

@end
