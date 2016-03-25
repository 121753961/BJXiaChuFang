//
//  BJMarketViewController.m
//  BJXiaChuFang
//
//  Created by kuangbing on 15/12/8.
//  Copyright © 2015年 Kunagbing. All rights reserved.
//

#import "BJMarketViewController.h"
#import "BJWebViewController.h"

@interface BJMarketViewController ()<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *myWebView;

@end

@implementation BJMarketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNanView];
    NSURL *url = [NSURL URLWithString:@"https://www.xiachufang.com/page/ec-tab/?version=12"];
    self.myWebView.delegate = self;
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    NSString *requestUrl = [[request URL] absoluteString];
    
    NSRange range = [requestUrl rangeOfString:@"http://"];
    
    if (range.length != 0) {
        [self jump:requestUrl];
        return NO;
    }
    
    BJLog(@"BJMarketViewControllerurl=%@",requestUrl);
    return YES;
}

-(void)jump:(NSString *)url{
    UIStoryboard *stroryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    BJWebViewController *webView = [stroryBoard instantiateViewControllerWithIdentifier:@"BJWebViewController"];
    webView.url = url;
    [self.navigationController pushViewController:webView animated:YES];
}

// 导航条
-(void)setNanView{
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"leftPageButtonBackgroundNormal" highImage:@"leftPageButtonBackgroundNormal" target:self action:nil];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"shoppingCart" highImage:@"shoppingCart" target:self action:nil];
    
    UISearchBar *search = [[UISearchBar alloc] initWithFrame:CGRectMake(80, 24.f, self.view.frame.size.width - 100, 25)];
    search.placeholder = @"搜索商品";
    search.backgroundImage = [UIImage imageNamed:@"camera_Magnet"];
    
    //search.barStyle =UIBarStyleBlackTranslucent;

    self.navigationItem.titleView = search;
    
//    UITextField *searchBox = [[UITextField alloc] initWithFrame:CGRectMake(80, 24.f, self.view.frame.size.width - 100, 25)];
//    [searchBox setBorderStyle:UITextBorderStyleRoundedRect];
//    searchBox.layer.borderColor = [[UIColor whiteColor] CGColor];
//    searchBox.layer.borderWidth = 1.0f;
//    searchBox.layer.cornerRadius = 5.0f;//圆角
//    searchBox.backgroundColor = kColor(246, 246, 246);
//    searchBox.alpha = 0.8;
//    searchBox.font = [UIFont systemFontOfSize:13];
//    searchBox.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"菜谱、食材" attributes:@{NSForegroundColorAttributeName: [UIColor lightGrayColor]}];
//    searchBox.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
//    
//    self.navigationItem.titleView = searchBox;
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
