//
//  BJHomeItemsContentsModel.h
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/6.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BJHomeItemsContentsModel : NSObject


@property (nonatomic, strong) id author;

@property (nonatomic, copy) NSString *score;

@property (nonatomic, copy) NSString *recipe_id;

@property (nonatomic, copy) NSString *video_url;


@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) id image;

@property (nonatomic, assign) NSInteger n_dishes;

@property (nonatomic, copy) NSString *desc;

// template 2
@property (nonatomic, copy) NSString *title_2nd;

@property (nonatomic, copy) NSString *title_1st;

// template 5
@property (nonatomic, copy) NSString *n_cooked;



@end

