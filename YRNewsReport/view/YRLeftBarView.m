//
//  YRLeftBarView.m
//  YRNewsReport
//
//  Created by urun on 15/10/29.
//  Copyright © 2015年 urun. All rights reserved.
//

#import "YRLeftBarView.h"

@interface YRLeftBarView()
{
    UITextField *_searchInputView;
}
@end

@implementation YRLeftBarView

- (instancetype)initWithFrame:(CGRect)frame imageName:(NSString *)imageName
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setNavItemForLeftBar:imageName];
    }
    return self;
}

- (void)setNavItemForLeftBar:(NSString *)leftImageName
{
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    leftBtn.frame = CGRectMake(0, 0, 40, 35);
    [leftBtn addTarget:self action:@selector(showMainMenu) forControlEvents:UIControlEventTouchUpInside];
    [leftBtn setBackgroundImage:[UIImage imageNamed:leftImageName] forState:UIControlStateNormal];
    [self addSubview:leftBtn];
    
    UITextField *titleTextField = [[UITextField alloc]initWithFrame:CGRectMake(50, 0, 170, 40)];
    titleTextField.background = [UIImage imageNamed:@"search_input_back_small-1"];
    titleTextField.placeholder = @"     请输入关键字";
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.headIndent = 20.0;
    paragraphStyle.firstLineHeadIndent = 20.0;
    paragraphStyle.tailIndent = 0.0;
    NSDictionary *attrsDictionary = @{NSFontAttributeName: [UIFont fontWithName:@"TrebuchetMS" size:15.0], NSParagraphStyleAttributeName: paragraphStyle};
    titleTextField.attributedText = [[NSAttributedString alloc] initWithString:@"0" attributes:attrsDictionary];
    
    titleTextField.tintColor = [UIColor blackColor];
    
    [self addSubview:titleTextField];
    _searchInputView = titleTextField;
}

- (NSString *)getKeyWord
{
    return _searchInputView.text;
}

- (void)disableSearchInput
{
    [_searchInputView resignFirstResponder];
}

- (void)showMainMenu
{
    if (self.buttonClick) {
        self.buttonClick();
    }
}

@end
