//
//  BJHomeNavView.m
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/21.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "BJHomeNavView.h"

@implementation BJHomeNavView

+(id)myHomeNavView{
    return [[[NSBundle mainBundle]loadNibNamed:@"BJHomeNavView" owner:nil options:nil]lastObject];
}

@end
