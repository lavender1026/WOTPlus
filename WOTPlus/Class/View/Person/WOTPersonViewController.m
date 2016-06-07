//
//  WOTPersonViewController.m
//  WOTPlus
//
//  Created by admin on 16/6/6.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTPersonViewController.h"
#import "WOTPersonTableView.h"


@implementation WOTPersonViewController
- (void)viewDidLoad
{
    self.view.backgroundColor =[UIColor colorWithRed:65/255.0 green:80/255.0 blue:105/255.0 alpha:1.0];
    [self addMenu];
}
- (void)addMenu
{
    WOTPersonTableView *personTabV= [[WOTPersonTableView alloc]initWithFrame:CGRectMake(0, 0, 150, 240) style:UITableViewStylePlain];
   

    [self.view addSubview:personTabV];
}
@end
