//
//  BJHomeOneGroup_03_Cell.m
//  BJXiaChuFang
//
//  Created by kuangbing on 15/12/9.
//  Copyright © 2015年 Kunagbing. All rights reserved.
//

#import "BJHomeOneGroup_03_Cell.h"
#import "WQAdView.h"

@implementation BJHomeOneGroup_03_Cell

+(NSString *)ID{
    return @"BJHomeOneGroup_03_Cell";
}

+(id)myHomeOneGroup_03_Cell{
    return [[[NSBundle mainBundle]loadNibNamed:@"BJHomeOneGroup_03_Cell" owner:nil options:nil] lastObject];
}

+(id)cellWithTableView:(UITableView *)tableView{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[BJHomeOneGroup_03_Cell ID]];
    if (cell == nil) {
        cell = [BJHomeOneGroup_03_Cell myHomeOneGroup_03_Cell];
    }
    return cell;
}

-(void)addView{
    // Type = 2 轮播组件
//    NSArray *banners = [[NSBundle mainBundle] loadNibNamed:@"SYHomeType_2" owner:self options:nil];
//    componentView = [banners objectAtIndex:0];
//    NSMutableArray *images = [[NSMutableArray array] init];
//    for (int v = 0; v < containers.items.count; v++) {
//        [images addObject:containers.items[v][@"imgUrl"]];
//        
//        NSString *key = [NSString stringWithFormat:@"%d%d",k,v];
//        NSString *param = [NSString stringWithFormat:@"%@,%@",containers.items[v][@"title"],containers.items[v][@"action"]];
//        [self.homeParams setObject:param forKey:key];
//    }
    
    WQAdView *adView=[[WQAdView alloc]initWithFrame:CGRectMake(0, 0,320 ,150)];
    //adView.delegate=self;
    //设置广告图片
    NSArray *images = [[NSArray alloc] init];
    adView.adDataArray = [NSMutableArray arrayWithArray:images];
    adView.adPeriodTime = 5.0f;
    [adView loadAdDataThenStart:1];
    
//    [componentView addSubview:adView];
//    [self.scrollView addSubview:componentView];
//    // bannerView
//    [componentView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(beforeView ? beforeView.mas_bottom : @0);
//        make.size.mas_equalTo(CGSizeMake(self.view.frame.size.width, 150));
//        
//    }];
}

@end
