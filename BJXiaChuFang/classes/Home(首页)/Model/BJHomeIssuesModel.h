//
//  BJHomeIssuesModel.h
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/6.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BJHomeIssuesModel : NSObject


@property (nonatomic, assign) NSInteger items_count;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) NSArray *items;

@property (nonatomic, assign) NSInteger issue_id;

@property (nonatomic, strong) NSArray *today_events;

@property (nonatomic, copy) NSString *publish_date;


@end



