//
//  WOTHomeTableViewController.m
//  WOTPlus
//
//  Created by admin on 16/5/26.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTHomeTableViewController.h"

@interface WOTHomeTableViewController ()

@end

@implementation WOTHomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = WOTRGBColor(65, 80, 105);
    self.view.backgroundColor = [UIColor colorWithRed:65/255.0 green:80/255.0 blue:105/255.0 alpha:1.0];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
    
}
-(bool)prefersStatusBarHidden
{
    return  YES;
}
@end
