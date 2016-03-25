//
//  UIColor+BJExtension.h
//  BJXiaChuFang
//
//  Created by KuangBing on 16/1/10.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (BJExtension)

/*
 * 生成一个RGB的Color
 */
+(UIColor *)BJColor:(CGFloat)red :(CGFloat)green :(CGFloat)blue;

/*
 * 生成一个RGB的透明度Color
 */
+(UIColor *)BJColor:(CGFloat)red :(CGFloat)green :(CGFloat)blue :(CGFloat)a;


/*
 * 生成一个随机的Color
 */
+(UIColor *)BJRandomColor;

@end
