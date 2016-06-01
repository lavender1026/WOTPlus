//
//  WOTSettingTableViewController.m
//  WOTPlus
//
//  Created by admin on 16/5/26.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTSettingTableViewController.h"
#import "WOTSettingTableViewCell.h"

@interface WOTSettingTableViewController ()

@end

@implementation WOTSettingTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = WOTRGBColor(65, 80, 105);
self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WOTSettingTableViewCell *cell = [[WOTSettingTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    
    return  cell;
}

@end
