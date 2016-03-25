//
//  BJConst.m
//  BJXiaChuFang
//
//  Created by KuangBing on 16/1/10.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "BJConst.h"

@implementation BJConst

// 接口数据
NSString * const  BJProductCategory = @"http://api.test.shengyuan.cn/router.do?service=mobile.productCategory.all.get";

/* 首页数据 */
NSString * const BJXiaChuFangUrl  = @"http://api.xiachufang.com/v2/issues/list.json?cursor=&origin=iphone&api_sign=e2d55365348a66ad9bd947d50c3c5f3b&sk=atBiS8VAS7W2K5COcpf1kg&size=2&timezone=Asia%2FShanghai&version=5.1.1&api_key=0f9f79be1dac5f003e7de6f876b17c00";

/* 首页导航数据 */
NSString * const BJHomeNavUrl = @"http://api.xiachufang.com/v2/init_page_v5.json?version=5.1.1&timezone=Asia%2FShanghai&api_sign=4020e7bf420f03a6e2c033e3c1ce26d2&api_key=0f9f79be1dac5f003e7de6f876b17c00&origin=iphone&sk=atBiS8VAS7W2K5COcpf1kg";

@end
