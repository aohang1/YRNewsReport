//
//  AppDelegate.m
//  YRNewsReport
//
//  Created by urun on 15/10/28.
//  Copyright © 2015年 urun. All rights reserved.
//

#import "AppDelegate.h"
#import "YRMainViewController.h"
#import "YRCommon.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    
    YRMainViewController *main = [[YRMainViewController alloc]init];
    UINavigationController *mainNavigation = [[UINavigationController alloc]initWithRootViewController:main];
    self.window.rootViewController = mainNavigation;
    
    
    //改变bar的背景颜色
    [[UINavigationBar appearance] setBarTintColor:YRColor(50, 50, 100)];
    
    //改变bar上面的按钮的颜色
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    
    //改变标题的颜色
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
    shadow.shadowOffset = CGSizeMake(0, 20);
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
