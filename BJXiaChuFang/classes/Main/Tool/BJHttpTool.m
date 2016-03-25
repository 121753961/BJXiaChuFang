//
//  BJHttpTool.m
//  BJXiaChuFang
//
//  Created by kuangbing on 15/12/10.
//  Copyright © 2015年 Kunagbing. All rights reserved.
//

#import "BJHttpTool.h"

@implementation BJHttpTool

+(void)GET:(NSString *)URLString parameters:(id)parameters success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    //创建请求管理者
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    BJLog(@"--------------------------------------");
    BJLog(@"BJHttpTool=%@",URLString);
    BJLog(@"--------------------------------------");
    [manager GET:URLString parameters:parameters progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];

    
}




@end
