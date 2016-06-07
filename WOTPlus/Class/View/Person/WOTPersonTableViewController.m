//
//  WOTPersonTableViewController.m
//  WOTPlus
//
//  Created by admin on 16/5/26.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTPersonTableViewController.h"

@interface WOTPersonTableViewController ()

@end

@implementation WOTPersonTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.view.backgroundColor =[UIColor colorWithRed:65/255.0 green:80/255.0 blue:105/255.0 alpha:1.0];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    self.tableView.bounces = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    return  cell;
}
@end
