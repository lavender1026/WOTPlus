//
//  WOTMainTabBarController.m
//  WOTPlus
//
//  Created by admin on 16/5/26.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTMainTabBarController.h"
//HOME
#import "WOTHomeTableViewController.h"
#import "WOTHomeNavController.h"
//Guide
#import "WOTGuideViewController.h"
//Video
#import "WOTVideoViewController.h"

//TieBar
#import "WOTTieBarViewController.h"
//Setting
#import "WOTSettingTableViewController.h"


@interface WOTMainTabBarController ()

@end

@implementation WOTMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupChildControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupChildControllers
{
    //    alloc init
    WOTHomeTableViewController *homeVc   = [[WOTHomeTableViewController alloc]init];
    WOTHomeNavController *homeNav        = [[WOTHomeNavController alloc]initWithRootViewController:homeVc];

    WOTGuideViewController *guideVc      = [[WOTGuideViewController alloc]init];

    WOTVideoViewController *videoVc      = [[WOTVideoViewController alloc]init];
    
    WOTTieBarViewController *tieBarVc    = [[WOTTieBarViewController alloc]init];

    WOTSettingTableViewController *setVc = [[WOTSettingTableViewController alloc]init];
   

// 赋值
    [self addChildViewController:homeNav title:@"首页" imageName:@"tabbar_home"];

    [self addChildViewController:guideVc title:@"攻略" imageName:@"tabbar_discover"];
    
    [self addChildViewController:videoVc title:@"视频" imageName:@"tabbar_home"];
    
    [self addChildViewController:tieBarVc title:@"贴吧" imageName:@"tabbar_message_center"];

    [self addChildViewController:setVc title:@"设置" imageName:@"tabbar_profile"];


}


- (void)addChildViewController: (UIViewController *)childController title: (NSString *)title imageName: (NSString *)imageName
{
    [childController.tabBarItem setImage:[UIImage imageNamed:imageName]];
    NSString *selectedImageName = [imageName stringByAppendingString:@"_highlighted"];
    [childController.tabBarItem setSelectedImage:[UIImage imageNamed:selectedImageName]];
    childController.tabBarItem.title = title;
    UINavigationController *nav = [[UINavigationController alloc]init];
    [nav addChildViewController:childController];
    [self addChildViewController:nav];
    
}


@end
