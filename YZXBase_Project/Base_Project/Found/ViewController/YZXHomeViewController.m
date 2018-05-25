//
//  YZXHomeViewController.m
//  Base_Project
//
//  Created by 尹星 on 2018/5/25.
//  Copyright © 2018年 尹星. All rights reserved.
//

#import "YZXHomeViewController.h"

@interface YZXHomeViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView       *collectionView;

@end

@implementation YZXHomeViewController

static NSString *collectionViewCell_identify = @"collectionViewCell_identify";

#pragma mark - 懒加载
- (UICollectionView *)collectionView
{
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.itemSize = CGSizeMake(YZXSCREEN_WIDTH / 2.0, 100);
        layout.minimumLineSpacing = 10.0;
        layout.minimumInteritemSpacing = 0.0;
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, YZXSTATE_HEIGHT + self.navigationController.YZX_navagationBarHeight, YZXSCREEN_WIDTH, YZXSCREEN_HEIGHT - YZXSTATE_HEIGHT - self.navigationController.YZX_navagationBarHeight - self.tabBarController.YZX_tabBarHeight) collectionViewLayout:layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.backgroundColor = [UIColor clearColor];
    }
    return _collectionView;
}

#pragma mark - ------------------------------------------------------------------------------------

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self p_settingNavigation];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    [self p_initData];
    [self p_initView];
}

- (void)p_settingNavigation
{
    [self hideNavigationBarSplitLine:YES];
    [self settingNavigationBarBackgroundColor:nil];
}

- (void)p_initData
{
    
}

- (void)p_initView
{
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:collectionViewCell_identify];
    [self.view addSubview:self.collectionView];
}

#pragma mark - <UICollectionViewDataSource,UICollectionViewDelegate>
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:collectionViewCell_identify forIndexPath:indexPath];
    cell.backgroundColor = [UIColor grayColor];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - ------------------------------------------------------------------------------------

@end
