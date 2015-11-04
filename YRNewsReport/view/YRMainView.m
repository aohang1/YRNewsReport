//
//  YRMainView.m
//  YRNewsReport
//
//  Created by urun on 15/10/28.
//  Copyright © 2015年 urun. All rights reserved.
//

#import "YRMainView.h"
#import "YRMainButton.h"

@implementation YRMainView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addAllButton];
    }
    return self;
}

-(void)addAllButton
{
    [self addbtn:@"我的收藏" icon:@"header_button_1" index:0];
    [self addbtn:@"本日报告" icon:@"header_button_2" index:1];
    [self addbtn:@"本周报告" icon:@"header_button_3" index:2];
    [self addbtn:@"本月报告" icon:@"header_button_4" index:3];
    [self addbtn:@"快报" icon:@"header_button_5" index:4];
    [self addbtn:@"专报" icon:@"header_button_6" index:5];
    [self addbtn:@"早报" icon:@"header_button_7" index:6];
    [self addbtn:@"晚报" icon:@"header_button_8" index:7];
    [self addbtn:@"周报" icon:@"header_button_9" index:8];
    [self addbtn:@"月报" icon:@"header_button_10" index:9];
    [self addbtn:@"季报" icon:@"header_button_11" index:10];
    [self addbtn:@"年报" icon:@"header_button_12" index:11];
    
}

- (UIButton *)addbtn:(NSString *)title icon:(NSString *)icon index:(int)index
{
    YRMainButton *btn = [[YRMainButton alloc] init];
    btn.backgroundColor = [UIColor whiteColor];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    
    int row = index / 3;
    int column = index % 3;
    
    CGFloat height = self.frame.size.height/4;
    CGFloat width = self.frame.size.width/3;
    
    btn.frame = CGRectMake(width * column , height * row, width - 1, height - 1);
    btn.tag = index;
    
    [btn addTarget:self action:@selector(naviBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:btn];

    return btn;
}

-(void)naviBtnClicked:(UIButton *)sender
{
    if (self.iconBlock) {
        self.iconBlock(sender);
    }
}

-(void)addBlock:(setIconBlock)block
{
    self.iconBlock = block;
}

@end
