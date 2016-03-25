//
//  UIBarButtonItem+BJExtension.h
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/8.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (BJExtension)

+(instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

@end
