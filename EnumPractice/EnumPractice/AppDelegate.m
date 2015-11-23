//
//  AppDelegate.m
//  EnumPractice
//
//  Created by 胡珀菖 on 2015/11/23.
//  Copyright © 2015年 胡珀菖. All rights reserved.
//

#import "AppDelegate.h"
#import "PracticeController.h"

@interface AppDelegate ()

@property (nonatomic, strong) PracticeController *practiceController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.practiceController = [[PracticeController alloc] init];
    self.window.rootViewController = self.practiceController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
