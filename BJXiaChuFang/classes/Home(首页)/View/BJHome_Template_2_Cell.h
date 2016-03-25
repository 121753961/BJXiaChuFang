//
//  BJHome_Template_2_Cell.h
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/6.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BJHomeIssuesItemsModel;

@interface BJHome_Template_2_Cell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;

@property (nonatomic, strong) BJHomeIssuesItemsModel *issuesItemsModel;


+(NSString *)ID;

+(id)myHome_Template_2_Cell;

+(instancetype)cellWithTableView:(UITableView *)tableView;

@end
