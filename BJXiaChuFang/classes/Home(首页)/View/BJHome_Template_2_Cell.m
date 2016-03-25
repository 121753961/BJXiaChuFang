//
//  BJHome_Template_2_Cell.m
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/6.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "BJHome_Template_2_Cell.h"
#import "BJHomeIssuesItemsModel.h"
#import "BJHomeItemsContentsModel.h"

@implementation BJHome_Template_2_Cell

+(NSString *)ID{
    return @"BJHome_Template_2_Cell";
}

+(id)myHome_Template_2_Cell{
    return [[[NSBundle mainBundle]loadNibNamed:@"BJHome_Template_2_Cell" owner:nil options:nil]lastObject];
}

+(instancetype)cellWithTableView:(UITableView *)tableView{
    BJHome_Template_2_Cell *cell = [tableView dequeueReusableCellWithIdentifier:[BJHome_Template_2_Cell ID]];
    if (cell == nil) {
        cell = [BJHome_Template_2_Cell myHome_Template_2_Cell];
    }
    return cell;
}

-(void)setIssuesItemsModel:(BJHomeIssuesItemsModel *)issuesItemsModel{
    _issuesItemsModel = issuesItemsModel;
    
    BJHomeItemsContentsModel *itemsContent = [BJHomeItemsContentsModel mj_objectWithKeyValues:issuesItemsModel.contents];
    
    _titleLabel.text = itemsContent.title_1st;
    
    _subTitleLabel.text = itemsContent.title_2nd;
    
    NSURL *url = [NSURL URLWithString:itemsContent.image[@"url"]];
    
    [_image sd_setImageWithURL:url];
}



@end
