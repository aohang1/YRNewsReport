//
//  YRTitleScrollView.h
//  YRNewsReport
//
//  Created by urun on 15/11/2.
//  Copyright © 2015年 urun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TitleChangeBlock)(NSInteger index);

@interface YRTitleScrollView : UIScrollView

@property(nonatomic ,retain)NSMutableArray *titleNames;

@property(nonatomic ,copy)TitleChangeBlock titleChangBlock;

- (void)setSelectTitle:(NSInteger)index;

@end
