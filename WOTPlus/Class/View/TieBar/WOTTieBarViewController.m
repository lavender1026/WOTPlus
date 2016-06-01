//
//  WOTTieBarViewController.m
//  WOTPlus
//
//  Created by admin on 16/5/26.
//  Copyright © 2016年 DirkChen. All rights reserved.
//


#import "WOTTieBarViewController.h"
#import "WOTTieBarWebView.h"
#import "SVProgressHUD.h"


@interface WOTTieBarViewController ()
@property (nonatomic, strong) WOTTieBarWebView * webView;
@end

@implementation WOTTieBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = WOTRGBColor(65, 80, 105);

    self.webView.webUrlString = @"http://tieba.baidu.com/f?kw=%CC%B9%BF%CB%CA%C0%BD%E7&fr=ala0&tpl=5";
//    self.webView.delegate = self;
    [self.view addSubview:self.webView];
}
//MARK:-懒加载
-(void)viewWillDisappear:(BOOL)animated
{
    [SVProgressHUD dismiss];
}

- (WOTTieBarWebView *)webView {
    if (!_webView) {
        self.webView = [[WOTTieBarWebView alloc] initWithFrame:self.view.frame];
        
        _webView.scalesPageToFit = YES;
        
        _webView.scrollView.directionalLockEnabled = YES;
        
        _webView.scrollView.showsHorizontalScrollIndicator = NO;
        
        [self.view addSubview:_webView];
        
        
    }
    return _webView;
}
@end
