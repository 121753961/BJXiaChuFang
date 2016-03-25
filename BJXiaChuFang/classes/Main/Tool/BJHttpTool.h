//
//  BJHttpTool.h
//  BJXiaChuFang
//
//  Created by kuangbing on 15/12/10.
//  Copyright © 2015年 Kunagbing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BJHttpTool : NSObject

+(void)GET:(NSString *)URLString parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;



@end
