//
//  UIViewController+frame.m
//  Base_Project
//
//  Created by 尹星 on 2018/5/25.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "UIViewController+frame.h"

@implementation UIViewController (frame)

- (CGFloat)yzx_width
{
    return self.view.frame.size.width;
}

- (CGFloat)yzx_height
{
    return self.view.frame.size.height;
}

- (CGFloat)yzx_x
{
    return self.view.frame.origin.x;
}

- (CGFloat)yzx_y
{
    return self.view.frame.origin.y;
}

@end
