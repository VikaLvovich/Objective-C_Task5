//
//  AppDelegate.m
//  LVTask5
//
//  Created by fpmi on 04.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "AppDelegate.h"
#import "LVApple.h"
#import "LVOrange.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.basket = [[LVBasket alloc] init];
    LVApple* apple = [[LVApple alloc]initWithSeeds: 2];
    [self.basket addFruit: apple];
    [apple release];
    apple = [[LVApple alloc]initWithSeeds: 3];
    [self.basket addFruit: apple];
    [apple release];
    apple = [[LVApple alloc]initWithSeeds: 4];
    [self.basket addFruit: apple];
    [apple release];
    LVOrange* orange = [[LVOrange alloc]initWithSeeds: 5];
    [self.basket addFruit: orange];
    [orange release];
    orange = [[LVOrange alloc]initWithSeeds: 6];
    [self.basket addFruit: orange];
    [orange release];
    orange = [[LVOrange alloc]initWithSeeds: 7];
    [self.basket addFruit: orange];
    [orange release];
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
    [self.basket release];
}

@end
