//
//  BJHomeOneGroup_01_Cell.m
//  BJXiaChuFang
//
//  Created by kuangbing on 15/12/8.
//  Copyright © 2015年 Kunagbing. All rights reserved.
//

#import "BJHomeOneGroup_01_Cell.h"

@implementation BJHomeOneGroup_01_Cell

+(id)cellWithTableView:(UITableView *)tableView{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[BJHomeOneGroup_01_Cell ID]];
    if (cell == nil) {
        cell = [BJHomeOneGroup_01_Cell myHomeOneGroup_01_Cell];
    }
    return cell;
}

+(id)myHomeOneGroup_01_Cell{
    return [[[NSBundle mainBundle]loadNibNamed:@"BJHomeOneGroup_01_Cell" owner:nil options:nil] lastObject];
}

+(NSString *)ID{
    return @"BJHomeOneGroup_01_Cell";
}

@end
