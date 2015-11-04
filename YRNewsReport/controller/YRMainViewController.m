//
//  YRMainViewController.m
//  YRNewsReport
//
//  Created by urun on 15/10/28.
//  Copyright © 2015年 urun. All rights reserved.
//

#import "YRMainViewController.h"
#import "YRMainView.h"
#import "YRCommon.h"
#import "YRClassesTableViewController.h"
#import "YRLeftBarView.h"

@interface YRMainViewController ()

@end

@implementation YRMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _naviClassesByButtonTag = @[@"我的收藏",@"本日报告",@"本周报告",
                                @"本月报告",@"快报",@"专报",@"早报",
                                @"晚报",@"周报",@"月报",@"季报",@"年报"
                                ];
    [self setNaviLeftBarItem:@"grouping2"];
    [self addItemView];
}

- (void)setNaviLeftBarItem:(NSString *)leftImageName
{
    YRLeftBarView *leftBarView = [[YRLeftBarView alloc]initWithFrame:CGRectMake(0, 0, 220, 40) imageName:leftImageName];
    leftBarView.buttonClick = ^{
        NSLog(@"button click");
    };
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithCustomView:leftBarView];
    self.navigationItem.leftBarButtonItem = leftItem;
    self.navigationItem.backBarButtonItem = nil;
}

- (void)addItemView
{
    YRMainView *mainView = [[YRMainView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64)];
    
    [mainView addBlock:^(id sender) {
//        UIButton *btn = (UIButton *)sender;
        YRClassesTableViewController *storeVC = [[YRClassesTableViewController alloc]init];
//        storeVC.title = _naviClassesByButtonTag[btn.tag];
        [self.navigationController pushViewController:storeVC animated:YES];
    }];
    
    [self.view addSubview:mainView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
