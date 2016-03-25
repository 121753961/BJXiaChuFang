//
//  BJHomeRequestTool.h
//  BJXiaChuFang
//
//  Created by KuangBing on 16/1/10.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BJHomeRequestTool : NSObject

/*
 * 获取首页的数据
 */
+(void)resultHomeData:(NSString *)url params:(NSDictionary *)params success:(void(^)(id result))success;


/*
 *获取首页导航条数据
 */

+(void)resultHomeNavData:(NSString *)url params:(NSDictionary *)params success:(void(^)(id result))success;

@end
