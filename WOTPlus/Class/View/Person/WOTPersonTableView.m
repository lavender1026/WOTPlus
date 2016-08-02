//
//  WOTPersonTableView.m
//  WOTPlus
//
//  Created by admin on 16/6/6.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTPersonTableView.h"

@interface WOTPersonTableView ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSArray *personArr;
@end
@implementation WOTPersonTableView
-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    if (self = [super initWithFrame:frame style:style]) {
        self.delegate = self;
        self.dataSource = self;
        self.showsVerticalScrollIndicator = NO;
        self.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
        self.tableHeaderView = [[UIView alloc] initWithFrame:CGRectZero];
        self.bounces = NO;
    }
    return self;
}
-(NSArray *)personArr{
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"leftController" ofType:@"plist"];
    NSLog(@"%@", path);
    
    
    if (_personArr == nil) {
   
            _personArr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"leftController" ofType:@"plist"]];

    }
    return _personArr;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

{
    NSDictionary *dict = self.personArr[section];
    return [dict[@"Items"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSDictionary *dict = self.personArr[indexPath.section];
    NSArray *arr = dict[@"Items"];
    NSDictionary *dictItem = arr[indexPath.row];
    
    
    static NSString *ID = @"wot";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    NSString *classStr = dictItem[@"AccessoryType"];
    Class className = NSClassFromString(classStr);
    id obj = [[className alloc]init];
    
    if ([obj isKindOfClass:[UIImageView class]]) {
        
        UIImageView *imgView = (UIImageView *)obj;
        
        imgView.image = [UIImage imageNamed:dictItem[@"AccessoryImageName"]];
        [imgView sizeToFit];
        cell.accessoryView = imgView;
        
    }
    cell.textLabel.text = dictItem[@"Title"];
    cell.textLabel.numberOfLines = 0;
    return cell;
}
@end
