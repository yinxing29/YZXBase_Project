//
//  PHIRegularExpression.h
//  Base_Project
//
//  Created by 尹星 on 2018/6/1.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YZXRegularExpression : NSObject

#pragma 正则匹配手机号
+ (BOOL)checkTelNumber:(NSString *)telNumber;
#pragma 正则匹配用户密码6-18位数字和字母组合
+ (BOOL)checkPassword:(NSString *)password;
#pragma 正则匹配用户姓名,20位的中文或英文
+ (BOOL)checkUserName:(NSString *)userName;
#pragma 正则匹配用户身份证号
+ (BOOL)checkUserIdCard:(NSString *)idCard;
#pragma 正则匹配URL
+ (BOOL)checkURL:(NSString *)url;

@end
