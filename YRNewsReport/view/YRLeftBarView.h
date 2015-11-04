//
//  YRLeftBarView.h
//  YRNewsReport
//
//  Created by urun on 15/10/29.
//  Copyright © 2015年 urun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ButtonClick)();

@interface YRLeftBarView : UIView

//@property(nonatomic,strong) UITextField *searchInputView;

@property(nonatomic,copy) ButtonClick buttonClick;

- (instancetype)initWithFrame:(CGRect)frame imageName:(NSString *)imageName;
- (NSString *)getKeyWord;
- (void)disableSearchInput;

@end
