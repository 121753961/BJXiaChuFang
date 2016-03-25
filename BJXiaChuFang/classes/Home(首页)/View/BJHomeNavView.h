//
//  BJHomeNavView.h
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/21.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BJHomeNavView : UIView

@property (weak, nonatomic) IBOutlet UILabel *title;

@property (weak, nonatomic) IBOutlet UIImageView *icon;

+(id)myHomeNavView;

@end
