//
//  YZXDefine.h
//  Base_Project
//
//  Created by 尹星 on 2018/5/25.
//  Copyright © 2018年 尹星. All rights reserved.
//

#ifndef YZXDefine_h
#define YZXDefine_h

# define DEBUG_LOG(fmt, ...) NSLog((@"[文件名:%s]" "[函数名:%s]" "[行号:%d] \n" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);

/*当前机型是否iPhoneX或iPhoneXs*/
#define YZX_IPHONEX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

/*当前机型是否iPhoneXR*/
#define YZX_IPHONEXR ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) : NO)

/*当前机型是否iPhoneXsMax*/
#define YZX_IPHONEXSMAX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) : NO)

/*当前机型是否iPhoneX系列*/
#define YZX_IPHONEXSERIES (YZX_IPHONEX || YZX_IPHONEXR || YZX_IPHONEXSMAX)

#define YZXSCREEN_WIDTH          ([[UIScreen mainScreen] bounds].size.width)
#define YZXSCREEN_HEIGHT         ([[UIScreen mainScreen] bounds].size.height)
#define YZXSTATE_HEIGHT          ([[UIApplication sharedApplication] statusBarFrame].size.height)
#define YZXSAFEAREA_HEIGHT       (YZX_IPHONEXSERIES ? 34.0 : 0.0)
#define YZXNAVIGATIONBAR_HEIGHT  44.0
#define YZXTABBAR_HEIGHT         49.0
#define YZXSTATUSBAR_HEIGHT      (YZX_IPHONEXSERIES ? 44.0 : 20.0)
#define YZXRGBCOLOR(x,y,z,a)     [UIColor colorWithRed:x / 255.0 green:x / 255.0 blue:x / 255.0 alpha:a]

#endif /* YZXDefine_h */
