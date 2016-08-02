//
//  AppDelegate.m
//  WOTPlus
//
//  Created by admin on 16/5/24.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "AppDelegate.h"
#import "MMDrawerController.h"
#import "WOTPersonTableViewController.h"
#import "WOTHomeTableViewController.h"
#import "WOTMainTabBarController.h"
#import "WOTPersonViewController.h"
#import "WOTNewFeatureCollectionViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor clearColor];
    [self setRootVC];
    self.window.rootViewController = [self setupNewFeature];
    [self.window makeKeyAndVisible];
    
    return YES;
}



- (void)setRootVC
{
    if ([[NSBundle mainBundle].infoDictionary[@"CFBundleVersion"] isEqualToString:[[NSUserDefaults standardUserDefaults] objectForKey:@"CFBundleVersion"]]) {
        WOTMainTabBarController *tabBar = [[WOTMainTabBarController alloc]init];
        UIViewController *personTabC = [[WOTPersonViewController alloc]init];
        UINavigationController *personNavC = [[UINavigationController alloc]initWithRootViewController:personTabC];
        
        MMDrawerController *DrawerController = [[MMDrawerController alloc]initWithCenterViewController:tabBar leftDrawerViewController:personNavC];
        
        [DrawerController setMaximumLeftDrawerWidth:150.0];
        [DrawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
        [DrawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
        self.window.rootViewController = DrawerController;
        
    }
    else
    {
        self.window.rootViewController = [self setupNewFeature];

    }
    

}

- (WOTNewFeatureCollectionViewController *)setupNewFeature
{
    WOTNewFeatureCollectionViewController *newFeatureVC = [[WOTNewFeatureCollectionViewController alloc]init];
    NSMutableArray *MovieArr = [NSMutableArray array];
    for (int i = 0; i<4; i++) {
        [MovieArr addObject:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"guide%zd",i] ofType:@".mp4"]];
    }
    newFeatureVC.guideMoviePathArr = MovieArr;
    NSMutableArray *ImageArr = [NSMutableArray arrayWithObjects:@"guide0",@"guide01",@"guide02",@"guide03", nil];
    
    newFeatureVC.guideImagesArr = ImageArr;
    
    return newFeatureVC;
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
