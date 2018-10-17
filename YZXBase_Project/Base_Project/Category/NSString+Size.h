//
//  NSString+Size.h
//  Base_Project
//
//  Created by 尹星 on 2018/6/21.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Size)

- (CGSize)calculateTextHeightWithSize:(CGSize)size
                           attributes:(NSDictionary *)attributes;

@end
