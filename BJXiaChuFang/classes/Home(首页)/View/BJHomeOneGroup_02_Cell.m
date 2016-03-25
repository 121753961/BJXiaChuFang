//
//  BJHomeOneGroup_02_Cell.m
//  BJXiaChuFang
//
//  Created by kuangbing on 15/12/9.
//  Copyright © 2015年 Kunagbing. All rights reserved.
//

#import "BJHomeOneGroup_02_Cell.h"
#import "BJHomeNavModel.h"
#import "BJHomeNavView.h"

@implementation BJHomeOneGroup_02_Cell

+(id)cellWithTableView:(UITableView *)tableView navs:(NSArray *)navs{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[BJHomeOneGroup_02_Cell ID]];
    if (cell == nil) {
        cell = [BJHomeOneGroup_02_Cell myHomeOneGroup_02_Cell];
    }
     UIView *oldView;
    for (int i = 0 ;i<navs.count;i++) {
       
        BJHomeNavModel *nav = [navs objectAtIndex:i];
        BJHomeNavView *view = [BJHomeNavView myHomeNavView];
        [cell.contentView addSubview:view];
        view.title.text = nav.name;
        CGFloat viewW = tableView.frame.size.width / navs.count;
        [view.icon sd_setImageWithURL:[NSURL URLWithString:nav.picurl]];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(cell.contentView.mas_top);
            make.left.equalTo(oldView ? oldView.mas_right : cell.contentView.mas_left);
            make.bottom.equalTo(cell.mas_bottom);
            make.width.mas_equalTo(@(viewW));
        }];
        oldView = view;
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

+(id)myHomeOneGroup_02_Cell{
    return [[[NSBundle mainBundle]loadNibNamed:@"BJHomeOneGroup_02_Cell" owner:nil options:nil] lastObject];
}

+(NSString *)ID{
    return @"BJHomeOneGroup_02_Cell";
}

@end
