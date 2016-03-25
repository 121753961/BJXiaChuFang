//
//  BJHomeContentModel.h
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/6.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BJHomeContentModel : NSObject

@property (strong, nonatomic) id cursor;

@property (nonatomic, strong) NSNumber *count;

@property (nonatomic, strong) NSArray *issues;

@end
