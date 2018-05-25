//
//  UIViewController+frame.m
//  Base_Project
//
//  Created by 尹星 on 2018/5/25.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "UIViewController+frame.h"

@implementation UIViewController (frame)

- (CGFloat)YZX_width
{
    return self.view.frame.size.width;
}

- (CGFloat)YZX_height
{
    return self.view.frame.size.height;
}

- (CGFloat)YZX_x
{
    return self.view.frame.origin.x;
}

- (CGFloat)YZX_y
{
    return self.view.frame.origin.y;
}

@end
