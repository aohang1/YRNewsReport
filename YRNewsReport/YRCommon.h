//
//  YRCommon.h
//  ent
//
//  Created by pro on 15/8/10.
//  Copyright (c) 2015年 xue. All rights reserved.
//

//判断是否为ios7
#define ios7 ([[UIDevice currentDevice].systemVersion  doubleValue] >=7.0)
//获得RGB颜色
#define YRColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
//获得RGB颜色
#define YRColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
//app的宽度
#define YRAppWidth ([UIScreen mainScreen].bounds.size.width)
//app的宽高度
#define YRAppHeight ([UIScreen mainScreen].bounds.size.height)

//常用的对象（监听）
#define YRNotificationCenter ([NSNotificationCenter defaultCenter])

