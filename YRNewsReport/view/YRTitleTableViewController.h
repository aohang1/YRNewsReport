//
//  YRTitleTableViewController.h
//  YRNewsReport
//
//  Created by urun on 15/11/3.
//  Copyright © 2015年 urun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SwipeGesture)(BOOL direct);

@interface YRTitleTableViewController : UITableViewController

@property(nonatomic ,copy)SwipeGesture swipeGestureBlock;

@end
