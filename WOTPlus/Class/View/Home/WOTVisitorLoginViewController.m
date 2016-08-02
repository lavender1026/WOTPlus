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
/**
 *  textField
 */
@property (nonatomic, strong) UITextField *textField;
@end

@implementation WOTVisitorLoginViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = WOTRGBColor(237, 237, 237);
    [self setupUI];
    [self setuplayout];
    [self startAnimation];
    [self addTargets];
}
//MARK:-setupUI
- (void)setupUI
{
    self.backIcon = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"visitordiscover_feed_mask_smallicon"]];
    
    self.circleIcon = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"visitordiscover_feed_image_smallicon"]];
    self.homeIcon = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"visitordiscover_feed_image_house"]];

    
    self.tipLabel.text = @"登录即可查看战斗战绩与你的坦克";
    self.tipLabel.font = [UIFont systemFontOfSize:14];
    self.tipLabel.tintColor = [UIColor purpleColor];
    [self.tipLabel sizeToFit];
    self.tipLabel.numberOfLines = 0;
    
    
    [self.northBtn setTitle:@"北区" forState:UIControlStateNormal];
    [self.northBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.southBtn setTitle:@"南区" forState:UIControlStateNormal];
    [self.southBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [self.loginBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self.northBtn setBackgroundImage:[UIImage imageNamed:@"common_button_white_disable"] forState:UIControlStateNormal];

    [self.southBtn setBackgroundImage:[UIImage imageNamed:@"common_button_white_disable"] forState:UIControlStateNormal];
   
    [self.loginBtn setBackgroundImage:[UIImage imageNamed:@"common_button_white_disable"] forState:UIControlStateNormal];
    
    [self.northBtn setBackgroundImage:[UIImage imageNamed:@"Slice 1"] forState:UIControlStateSelected];
    [self.southBtn setBackgroundImage:[UIImage imageNamed:@"Slice 1"] forState:UIControlStateSelected];
    [self.loginBtn setBackgroundImage:[UIImage imageNamed:@"Slice 1"] forState:UIControlStateSelected];
    
    
    [self.textField setPlaceholder:@"请输入游戏昵称"];
    [self.textField setTintColor:[UIColor redColor]];
    [self.textField setTextColor:[UIColor redColor]];
//    UITextBorderStyleNone,
//    UITextBorderStyleLine,
//    UITextBorderStyleBezel,
//    UITextBorderStyleRoundedRect
    self.textField.leftView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tabbar_profile"]];
    self.textField.leftViewMode = UITextFieldViewModeAlways;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.font = [UIFont systemFontOfSize:12];
    
    
    
    [self.view addSubview:self.circleIcon];
    [self.view addSubview:self.homeIcon];
    [self.view addSubview:self.backIcon];
[self.view addSubview:self.tipLabel];
    [self.view addSubview:self.northBtn];
    [self.view addSubview:self.southBtn];
    [self.view addSubview:self.textField];
    [self.view addSubview:self.loginBtn];
    
}

//MARK:-setuplayout

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
    [self.textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.equalTo(self.northBtn.mas_bottom).offset(16);
        make.width.mas_equalTo(200);
    }];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.tipLabel.mas_right).offset(-50);
        make.top.equalTo(self.textField.mas_bottom).offset(16);
        make.centerX.equalTo(self.view.mas_centerX);
    }];
   
}



//MARK:- Animation
- (void)startAnimation
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    animation.duration = 9;
    animation.repeatCount = MAXFLOAT;
    animation.toValue = @(2.0*M_PI);
    animation.removedOnCompletion = false;
    [self.circleIcon.layer addAnimation:animation forKey:nil];
}
//MARK:-add targets
- (void)addTargets
{
    [self.southBtn addTarget:self action:@selector(southBtnDidClick) forControlEvents:UIControlEventTouchUpInside];
    [self.northBtn addTarget:self action:@selector(northBtnDidClick) forControlEvents:UIControlEventTouchUpInside];
    [self.loginBtn addTarget:self action:@selector(loginBtnDidClick) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)southBtnDidClick
{
    NSLog(@"南区");
    
}
- (void)northBtnDidClick
{
    NSLog(@"北区");
}
- (void)loginBtnDidClick
{
    NSLog(@"登陆");
//    发送网络请求 获取南区北区 账号昵称至网络 发送成功则跳转push页面到个人信息
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
- (UITextField* )textField
{
    if (!_textField) {
        _textField = [[UITextField alloc]init];
    }
    return _textField;
}
@end
