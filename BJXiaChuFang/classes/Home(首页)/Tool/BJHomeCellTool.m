//
//  BJHomeCellTool.m
//  BJXiaChuFang
//
//  Created by KuangBing on 16/1/10.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "BJHomeCellTool.h"
#import "BJHome_Template_1_Cell.h"
#import "BJHome_Template_2_Cell.h"
#import "BJHome_Template_4_Cell.h"
#import "BJHome_Template_5_Cell.h"
#import "BJHomeIssuesItemsModel.h"

#import "BJHomeOneGroup_01_Cell.h"
#import "BJHomeOneGroup_02_Cell.h"
#import "BJHomeOneGroup_03_Cell.h"

#import "BJHomeNavContentModel.h"

@implementation BJHomeCellTool


/*
 * 根模型中的 Template 相应 cell
 */
+(UITableViewCell *)tableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath issuesItems:(BJHomeIssuesItemsModel *)issuesItems{
    switch (issuesItems.Template) {
        case 1:{
            BJHome_Template_1_Cell *templateCell = [BJHome_Template_1_Cell cellWithTableView:tableView];
            templateCell.issuesItemsModel = issuesItems;
            return templateCell;
            break;
        }
        case 2:{
            BJHome_Template_2_Cell *templateCell = [BJHome_Template_2_Cell cellWithTableView:tableView];
            templateCell.issuesItemsModel = issuesItems;
            return templateCell;
            break;
        }
        case 4:{
            BJHome_Template_4_Cell *templateCell = [BJHome_Template_4_Cell cellWithTableView:tableView];
            templateCell.issuesItemsModel = issuesItems;
            return templateCell;
            break;
        }
        case 5:{
            BJHome_Template_5_Cell *templateCell = [BJHome_Template_5_Cell cellWithTableView:tableView];
            templateCell.issuesItemsModel = issuesItems;
            return templateCell;
            break;
        }
        default:
            return [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
            break;
    }
}

/*
 * 根模型中的 Template 计算每个 Cell 的高度
 */
+(CGFloat)cellHeightWithIssuesItems:(BJHomeIssuesItemsModel *)issuesItems{
    switch (issuesItems.Template) {
        case 1:
            return 300.0f;
            break;
        case 2:
            return 240.0f;
            break;
        case 4:
            return 240.0f;
            break;
        case 5:
            return 300.0f;
            break;
        default:
            return 60.0f;
            break;
    }
}


/*
 * 返回首页状况板块的 Cell
 */
+(UITableViewCell *)tableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath navContent:(BJHomeNavContentModel *)navContent{
    switch (indexPath.row) {
        case 0:{
            BJHomeOneGroup_01_Cell *oneCell = [BJHomeOneGroup_01_Cell cellWithTableView:tableView];
            return oneCell;
            break;
        }
        case 1:{
            BJHomeOneGroup_02_Cell *oneCell = [BJHomeOneGroup_02_Cell cellWithTableView:tableView navs:navContent.navs];
            return oneCell;
            break;
        }
        case 2:{
            BJHomeOneGroup_03_Cell *oneCell = [BJHomeOneGroup_03_Cell cellWithTableView:tableView];
            return oneCell;
            break;
        }
        default:
            return [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
            break;
    }
}

/*
 * 返回首页状况板块的 Cell 的高度
 */
+(CGFloat)cellHeightTableView:(UITableView *)tableView WithIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
            return 120.0f;
            break;
        case 1:
            return 90.0f;
            break;
        case 2:
            return tableView.frame.size.width * (75.0f / 320.0f);
            break;
        default:
            return 60.0f;
            break;
    }
}

@end
