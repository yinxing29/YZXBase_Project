//
//  PHIGetterAppInfo.m
//  Base_Project
//
//  Created by 尹星 on 2018/6/21.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "YZXAppInfo.h"

@interface YZXAppInfo ()

@property (nonatomic, copy) NSDictionary         *infoDictionary;

@end

@implementation YZXAppInfo

- (NSString *)appName
{
    return [self.infoDictionary objectForKey:@"CFBundleDisplayName"];
}

- (NSString *)appShortVersionString
{
    return [self.infoDictionary objectForKey:@"CFBundleShortVersionString"];
}

- (NSString *)appBundleVersion
{
    return [self.infoDictionary objectForKey:@"CFBundleVersion"];
}

#pragma mark - 懒加载
- (NSDictionary *)infoDictionary
{
    if (!_infoDictionary) {
        _infoDictionary = [[NSBundle mainBundle] infoDictionary];
        CFShow((__bridge CFTypeRef)(_infoDictionary));
    }
    return _infoDictionary;
}

#pragma mark - ------------------------------------------------------------------------------------

@end
