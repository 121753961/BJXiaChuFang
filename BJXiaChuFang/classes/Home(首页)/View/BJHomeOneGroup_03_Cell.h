//
//  BJHomeOneGroup_03_Cell.h
//  BJXiaChuFang
//
//  Created by kuangbing on 15/12/9.
//  Copyright © 2015年 Kunagbing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BJHomeOneGroup_03_Cell : UITableViewCell

+(NSString *)ID;

+(id)myHomeOneGroup_03_Cell;

+(id)cellWithTableView:(UITableView *)tableView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end
