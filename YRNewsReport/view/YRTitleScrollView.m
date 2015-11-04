//
//  YRTitleScrollView.m
//  YRNewsReport
//
//  Created by urun on 15/11/2.
//  Copyright © 2015年 urun. All rights reserved.
//

#define kBtnWidth 90
#define kBtnHight 40
#define kTitleBtnTag 123

#import "YRTitleScrollView.h"
#import "YRCommon.h"

@interface YRTitleScrollView()
{
    NSMutableArray *_titleNames;
    UIButton *_selectButton;
}

@end

@implementation YRTitleScrollView

- (NSMutableArray *)titleNames
{
    if (_titleNames == nil) {
        _titleNames = [NSMutableArray array];
    }
    return _titleNames;
}

- (void)setTitleNames:(NSMutableArray *)titleNames
{
    _titleNames = titleNames;
    [self addAllTitle];
    [self setSelectTitle:0];
    self.contentSize = CGSizeMake(_titleNames.count * kBtnWidth, -64);
}

//选中某个标题
- (void)setSelectTitle:(NSInteger)index
{
    NSInteger tag = kTitleBtnTag +index;
    UIView *btn = [self viewWithTag:tag];
    [self buttonClick:btn];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        self.showsHorizontalScrollIndicator = NO;
        _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
    }
    return self;
}

- (void)addAllTitle
{
    for (int i = 0; i < self.titleNames.count; i++) {
        [self addTitleButton:[self.titleNames objectAtIndex:i] withIndex:i];
    }
}

- (void)addTitleButton:(NSString *)title withIndex:(NSInteger)index
{
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(kBtnWidth * index, -64, kBtnWidth, kBtnHight);
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateSelected];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
    btn.enabled = YES;
    btn.userInteractionEnabled = YES;
    btn.tag = kTitleBtnTag + index;
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
}

- (void)buttonClick:(id)sender
{
    UIButton *btn = (UIButton*)sender;
    if(btn!=_selectButton){
        _selectButton.selected=NO;
        _selectButton=btn;
    }
    _selectButton.selected=YES;
    NSInteger index = btn.tag - kTitleBtnTag;
    if (self.titleChangBlock) {
        self.titleChangBlock(index);
    }
    
    //添加scroll的自动滚动功能
    NSInteger midCout = self.titleNames.count/2;
    int num = (int)labs(index - midCout);
    if (num < (midCout - 2)) {
        [self setContentOffset:CGPointMake(btn.frame.origin.x - 140, -64) animated:YES];
    }
    else if(index > midCout)
    {
        [self setContentOffset:CGPointMake(self.titleNames.count * kBtnWidth - YRAppWidth, -64) animated:YES];
    }
    else if(index < midCout)
    {
        [self setContentOffset:CGPointMake(0, -64) animated:YES];
    }
}

@end
