//
//  SecondViewController.m
//  Base_Project
//
//  Created by 尹星 on 2018/10/17.
//  Copyright © 2018 尹星. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    [self yzx_settingNavigationBarBackgroundColor:[UIColor yellowColor]
                                            alpha:0.5];
    [self yzx_hideNavigationBarSplitLine:YES];
}


@end
