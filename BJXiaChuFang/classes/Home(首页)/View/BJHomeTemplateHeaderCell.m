//
//  BJHomeTemplateHeaderCell.m
//  BJXiaChuFang
//
//  Created by KuangBing on 16/1/8.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "BJHomeTemplateHeaderCell.h"
#import "BJHomeIssuesModel.h"

@implementation BJHomeTemplateHeaderCell

+(NSString *)ID{
    return @"BJHomeTemplateHeaderCell";
}

+(id)myHomeTemplateHeaderCell{
    return [[[NSBundle mainBundle]loadNibNamed:@"BJHomeTemplateHeaderCell" owner:nil options:nil] lastObject];
}

+(instancetype)cellWithTableView:(UITableView *)tableView{
    BJHomeTemplateHeaderCell *cell = [tableView dequeueReusableCellWithIdentifier:[BJHomeTemplateHeaderCell ID]];
    if (cell == nil) {
        cell = [BJHomeTemplateHeaderCell myHomeTemplateHeaderCell];
    }
    return cell;
}


-(void)setIssuesModel:(BJHomeIssuesModel *)issuesModel{
    
    _issuesModel = issuesModel;
    
    _titleLabel.text = issuesModel.title;
    
}

@end
