//
//  BJHome_Template_4_Cell.h
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/6.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BJHomeIssuesItemsModel;


@interface BJHome_Template_4_Cell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (nonatomic, strong) BJHomeIssuesItemsModel *issuesItemsModel;

+(NSString *)ID;

+(id)myHome_Template_4_Cell;

+(instancetype)cellWithTableView:(UITableView *)tableView;

@end
