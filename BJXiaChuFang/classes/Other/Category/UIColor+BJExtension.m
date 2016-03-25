//
//  UIColor+BJExtension.m
//  BJXiaChuFang
//
//  Created by KuangBing on 16/1/10.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "UIColor+BJExtension.h"

@implementation UIColor (BJExtension)

/*
 * 生成一个RGB的Color
 */
+(UIColor *)BJColor:(CGFloat)red :(CGFloat)green :(CGFloat)blue{
    return [self colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1];
}

/*
 * 生成一个随机的Color
 */
+(UIColor *)BJRandomColor{
    return [self BJColor:arc4random_uniform(256) :arc4random_uniform(256) :arc4random_uniform(256)];
}

/*
 * 生成一个RGB的透明度Color
 */
+(UIColor *)BJColor:(CGFloat)red :(CGFloat)green :(CGFloat)blue :(CGFloat)a{
    return [self colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:a];
}

@end
