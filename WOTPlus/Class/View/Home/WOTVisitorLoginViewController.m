//
//  WOTVisitorLoginViewController.m
//  WOTPlus
//
//  Created by admin on 16/6/1.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTVisitorLoginViewController.h"
#import "Masonry.h"
@interface WOTVisitorLoginViewController ()
/**
 *  圆圈
 */
@property (nonatomic, strong) UIImageView *circleIcon;
/**
 *  房子
 */
@property (nonatomic, strong) UIImageView *homeIcon;
/**
 *  backIcon
 */
@property (nonatomic, strong) UIImageView *backIcon;
/**
 *  north
 */
@property (nonatomic, strong) UIButton *northBtn;
/**
 *  south
 */
@property (nonatomic, strong) UIButton *southBtn;
/**
 *  login
 */
@property (nonatomic, strong) UIButton *loginBtn;
/**
 *  tipLabel
 */
@property (nonatomic, strong) UILabel *tipLabel;
@end

@implementation WOTVisitorLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = WOTRGBColor(237, 237, 237);
    [self setupUI];
    [self setuplayout];
}

- (void)setupUI
{
    self.backIcon = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"visitordiscover_feed_mask_smallicon"]];
    
    self.circleIcon = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"visitordiscover_feed_image_smallicon"]];
    self.homeIcon = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"visitordiscover_feed_image_house"]];

    
    self.tipLabel.text = @"登录即可查看战斗战绩与你的坦克哦";
    self.tipLabel.font = [UIFont systemFontOfSize:14];
    self.tipLabel.tintColor = [UIColor purpleColor];
    [self.tipLabel sizeToFit];
    self.tipLabel.numberOfLines = 0;
    
    
    [self.northBtn setTitle:@"北区" forState:UIControlStateNormal];
    [self.northBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.southBtn setTitle:@"南区" forState:UIControlStateNormal];
    [self.southBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [self.loginBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self.northBtn setBackgroundImage:[UIImage imageNamed:@"common_button_white_disable"] forState:UIControlStateNormal];

    [self.southBtn setBackgroundImage:[UIImage imageNamed:@"common_button_white_disable"] forState:UIControlStateNormal];
   
    [self.loginBtn setBackgroundImage:[UIImage imageNamed:@"common_button_white_disable"] forState:UIControlStateNormal];
    
    [self.northBtn setBackgroundImage:[UIImage imageNamed:@"Slice 1"] forState:UIControlStateSelected];
    [self.southBtn setBackgroundImage:[UIImage imageNamed:@"Slice 1"] forState:UIControlStateSelected];
    [self.loginBtn setBackgroundImage:[UIImage imageNamed:@"Slice 1"] forState:UIControlStateSelected];
    
    [self.view addSubview:self.backIcon];
    [self.view addSubview:self.circleIcon];
    [self.view addSubview:self.homeIcon];
    [self.view addSubview:self.northBtn];
    [self.view addSubview:self.southBtn];
    [self.view addSubview:self.loginBtn];
    [self.view addSubview:self.tipLabel];
}


- (void)setuplayout
{
    //        layoout
    [self.circleIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        
        make.centerY.equalTo(self.view.mas_centerY).offset(-80);
    }];
    [self.homeIcon mas_makeConstraints:^(MASConstraintMaker *make) {

        make.centerX.equalTo(self.circleIcon.mas_centerX);
        make.centerY.equalTo(self.circleIcon.mas_centerY);
    }];
    [self.backIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.circleIcon.mas_centerX);
        make.centerY.equalTo(self.circleIcon.mas_centerY);
    }];
        //提示文案
    [self.tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.circleIcon.mas_bottom).offset(16);
        make.centerX.equalTo(self.circleIcon.mas_centerX);
        make.width.mas_equalTo(230);
    }];
    [self.northBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.tipLabel.mas_left);
        make.top.equalTo(self.tipLabel.mas_bottom).offset(16);
        make.width.mas_equalTo(100);
    }];
    [self.southBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.tipLabel.mas_right);
        make.top.equalTo(self.tipLabel.mas_bottom).offset(16);
        make.width.mas_equalTo(100);
    }];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.tipLabel.mas_right);
        make.top.equalTo(self.northBtn.mas_bottom).offset(16);
        make.centerX.equalTo(self.view.mas_centerX);
    }];
    
    
    
    
    
    
    
 
    
 
    
//    //        add target
//    loginBtn.addTarget(self, action: #selector(DCVisitorLoginView.loginBtnClick), forControlEvents: .TouchUpInside)
//    registerBtn.addTarget(self, action: #selector(DCVisitorLoginView.registerBtnClick), forControlEvents: .TouchUpInside)
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






//MARK:-懒加载



- (UIImageView* )backIcon
{
    if (!_backIcon) {
        _backIcon = [[UIImageView alloc]init];
        
    }
    return _backIcon;
}

- (UIImageView* )circleIcon
{
    if (!_circleIcon) {
        _circleIcon = [[UIImageView alloc]init];
    }
    return _circleIcon;
}
- (UIImageView* )homeIcon
{
    if (!_homeIcon) {
        _homeIcon = [[UIImageView alloc]init];
    }
    return _homeIcon;
}
- (UIButton* )northBtn
{
    if (!_northBtn) {
        _northBtn = [[UIButton alloc]init];
    }
    return _northBtn;
}
- (UIButton* )southBtn
{
    if (!_southBtn) {
        _southBtn = [[UIButton alloc]init];
    }
    return _southBtn;
}
- (UIButton* )loginBtn
{
    if (!_loginBtn) {
        _loginBtn = [[UIButton alloc]init];
    }
    return _loginBtn;
}
- (UILabel* )tipLabel
{
    if (!_tipLabel) {
        _tipLabel = [[UILabel alloc]init];
    }
    return _tipLabel;
}
@end
