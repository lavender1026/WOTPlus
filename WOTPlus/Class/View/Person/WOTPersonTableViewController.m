//
//  WOTPersonTableViewController.m
//  WOTPlus
//
//  Created by admin on 16/5/26.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTPersonTableViewController.h"
#import "WOTPersonTableViewCell.h"

@interface WOTPersonTableViewController ()

@end

@implementation WOTPersonTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.view.backgroundColor =[UIColor blueColor];
    
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
    
    WOTPersonTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell =[[WOTPersonTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    return  cell;
}
@end
