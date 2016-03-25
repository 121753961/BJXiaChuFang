//
//  UIImage+BJExtension.m
//  BJXiaChuFang
//
//  Created by kuangbing on 16/1/8.
//  Copyright © 2016年 Kunagbing. All rights reserved.
//

#import "UIImage+BJExtension.h"

@implementation UIImage (BJExtension)

//给UIImage添加的类别
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    @autoreleasepool {
        
        CGRect rect = CGRectMake(0, 0, size.width, size.height);
        
        UIGraphicsBeginImageContext(rect.size);
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextSetFillColorWithColor(context,color.CGColor);
        
        CGContextFillRect(context, rect);
        
        UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        
        return img;
    }
}

@end

