//
//  BJHomeIssuesItemsModel.h
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/6.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BJHomeIssuesItemsModel : NSObject

@property (nonatomic, copy) NSString *publish_time;

@property (nonatomic, copy) NSString *url;

@property (nonatomic, assign) NSInteger Template;

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, strong) id contents;

@property (nonatomic, copy) NSString *column_name;

@end
