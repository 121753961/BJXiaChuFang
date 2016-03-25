//
//  UIBarButtonItem+BJExtension.m
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/8.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "UIBarButtonItem+BJExtension.h"

@implementation UIBarButtonItem (BJExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}

@end
