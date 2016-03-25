//
//  BJHome_Template_5_Cell.m
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/6.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "BJHome_Template_5_Cell.h"
#import "BJHomeIssuesItemsModel.h"
#import "BJHomeItemsContentsModel.h"

@implementation BJHome_Template_5_Cell

+(NSString *)ID{
    return @"BJHome_Template_4_Cell";
}

+(id)myHome_Template_5_Cell{
    return [[[NSBundle mainBundle]loadNibNamed:@"BJHome_Template_5_Cell" owner:nil options:nil]lastObject];
}

+(instancetype)cellWithTableView:(UITableView *)tableView{
    BJHome_Template_5_Cell *cell = [tableView dequeueReusableCellWithIdentifier:[BJHome_Template_5_Cell ID]];
    if (cell == nil) {
        cell = [BJHome_Template_5_Cell myHome_Template_5_Cell];
    }
    return cell;
}

-(void)setIssuesItemsModel:(BJHomeIssuesItemsModel *)issuesItemsModel{
    _issuesItemsModel = issuesItemsModel;
    
    BJHomeItemsContentsModel *itemsContent = [BJHomeItemsContentsModel mj_objectWithKeyValues:issuesItemsModel.contents];
    
    _titleLabel.text = itemsContent.title;
    
    _subTitleLabel.text = itemsContent.desc;
    
    _n_cookedLabel.text = [NSString stringWithFormat:@"%@人做过",itemsContent.n_cooked];
    
    NSURL *url = [NSURL URLWithString:itemsContent.image[@"url"]];
    
    [_image sd_setImageWithURL:url];
    
    NSURL *photoUrl = [NSURL URLWithString:itemsContent.author[@"photo"]];
    
    
    [_photo.layer setCornerRadius:(_photo.frame.size.height/2)];
    [_photo.layer setMasksToBounds:YES];
    [_photo setContentMode:UIViewContentModeScaleAspectFill];
    [_photo setClipsToBounds:YES];
    _photo.layer.shadowColor = [UIColor whiteColor].CGColor;
    _photo.layer.shadowOffset = CGSizeMake(4, 4);
    _photo.layer.shadowOpacity = 0.5;
    _photo.layer.shadowRadius = 2.0;
    _photo.layer.borderColor = [[UIColor whiteColor] CGColor];
    _photo.layer.borderWidth = 3.5f;
    _photo.userInteractionEnabled = YES;
    _photo.backgroundColor = [UIColor clearColor];
    
    [_photo sd_setImageWithURL:photoUrl];
}


@end
