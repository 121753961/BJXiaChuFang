//
//  BJWebViewController.m
//  BJXiaChuFang
//
//  Created by KuangBing on 16/1/28.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "BJWebViewController.h"

@interface BJWebViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;

@end

@implementation BJWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"backStretchBackgroundNormal" highImage:@"backStretchBackgroundNormal" target:self action:nil];
    
    if (self.url == nil || [self.url isEqualToString:@""]) {
        return;
    }
    
    self.myWebView.delegate = self;
    
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.url]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    NSString *requestUrl = [[request URL] absoluteString];
    
    BJLog(@"webViewUlr = %@",requestUrl);

    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
