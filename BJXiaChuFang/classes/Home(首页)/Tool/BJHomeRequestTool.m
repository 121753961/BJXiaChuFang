//
//  BJHomeRequestTool.m
//  BJXiaChuFang
//
//  Created by KuangBing on 16/1/10.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "BJHomeRequestTool.h"
#import "BJHttpTool.h"

@implementation BJHomeRequestTool

/*
 * 获取首页的数据
 */
+(void)resultHomeData:(NSString *)url params:(NSDictionary *)params success:(void(^)(id result))success{
    [BJHttpTool GET:url parameters:params success:^(id responseObject) {
        success(responseObject);
    } failure:^(NSError *error) {
        BJLog(@"请求失败！！");
        success([BJHomeRequestTool readLocalData]);
    }];
}

+(id)readLocalData{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"homeData" ofType:@"json"];

    NSData *jsonData = [NSData dataWithContentsOfFile:path options:NSDataReadingMappedIfSafe error:nil];

    NSMutableDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
    return dic;
}

/*
 *获取首页导航条数据
 */

+(void)resultHomeNavData:(NSString *)url params:(NSDictionary *)params success:(void(^)(id result))success{
    [BJHttpTool GET:url parameters:params success:^(id responseObject) {
        success(responseObject);
    } failure:^(NSError *error) {
        BJLog(@"请求失败！！");
    }];
}

@end
