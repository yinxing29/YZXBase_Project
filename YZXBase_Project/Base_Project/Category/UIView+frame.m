//
//  UIView+frame.m
//  Base_Project
//
//  Created by 尹星 on 2018/5/25.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

- (CGFloat)YZX_width
{
    return self.frame.size.width;
}

- (CGFloat)YZX_height
{
    return self.frame.size.height;
}

- (CGFloat)YZX_x
{
    return self.frame.origin.x;
}

- (CGFloat)YZX_y
{
    return self.frame.origin.y;
}

@end
