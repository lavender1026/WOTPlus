//
//  WOTTieBarWebView.m
//  WOTPlus
//
//  Created by admin on 16/5/28.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTTieBarWebView.h"
#import <SVProgressHUD.h>

@interface WOTTieBarWebView ()<UIWebViewDelegate>

@end

@implementation WOTTieBarWebView

#pragma mark - setter/getter

- (void)setWebUrlString:(NSString *)webUrlString {
    _webUrlString = webUrlString;
    NSURLRequest* webReq = [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:webUrlString]];
    self.delegate = self;
    [self loadRequest:webReq];
}
//MARK:- Delegate
-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [SVProgressHUD show];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [SVProgressHUD dismiss];
}
@end
