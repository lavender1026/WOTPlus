//
//  WOTTieBarWebView.m
//  WOTPlus
//
//  Created by admin on 16/5/28.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTTieBarWebView.h"

@implementation WOTTieBarWebView

#pragma mark - setter/getter

- (void)setWebUrlString:(NSString *)webUrlString {
    _webUrlString = webUrlString;
    NSURLRequest* webReq = [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:webUrlString]];
    [self loadRequest:webReq];
}

@end
