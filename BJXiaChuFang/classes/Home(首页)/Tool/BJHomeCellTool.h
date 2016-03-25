//
//  BJHomeCellTool.h
//  BJXiaChuFang
//
//  Created by KuangBing on 16/1/10.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BJHomeIssuesItemsModel,BJHomeNavContentModel;

@interface BJHomeCellTool : NSObject

/*
 * 根模型中的 Template 相应 cell
 */
+(UITableViewCell *)tableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath issuesItems:(BJHomeIssuesItemsModel *)issuesItems;

/*
 * 根模型中的 Template 计算每个 Cell 的高度
 */
+(CGFloat)cellHeightWithIssuesItems:(BJHomeIssuesItemsModel *)issuesItems;

/*
 * 返回首页状况板块的 Cell
 */
+(UITableViewCell *)tableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath navContent:(BJHomeNavContentModel *)navContent;

/*
 * 返回首页状况板块的 Cell 的高度
 */
+(CGFloat)cellHeightTableView:(UITableView *)tableView WithIndexPath:(NSIndexPath *)indexPath;

@end
