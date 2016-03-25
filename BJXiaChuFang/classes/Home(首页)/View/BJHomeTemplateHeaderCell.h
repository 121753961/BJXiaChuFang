//
//  BJHomeTemplateHeaderCell.h
//  BJXiaChuFang
//
//  Created by KuangBing on 16/1/8.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BJHomeIssuesModel;

@interface BJHomeTemplateHeaderCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) BJHomeIssuesModel *issuesModel;

+(NSString *)ID;

+(id)myHomeTemplateHeaderCell;

+(instancetype)cellWithTableView:(UITableView *)tableView;

@end
