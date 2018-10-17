//
//  NSString+Size.m
//  Base_Project
//
//  Created by 尹星 on 2018/6/21.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGSize)calculateTextHeightWithSize:(CGSize)size
                           attributes:(NSDictionary *)attributes
{
    CGSize restuleSize = CGSizeZero;
    restuleSize = [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attributes context:nil].size;
    return restuleSize;
}

@end
