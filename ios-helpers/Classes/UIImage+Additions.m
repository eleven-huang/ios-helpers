//
//  UIImage+Additions.m
//  ios-helpers
//
//  Created by huang eleven on 11/7/13.
//  Copyright (c) 2013 yijun huang. All rights reserved.
//

#import "UIImage+Additions.h"

@implementation UIImage (Additions)

- (UIImage *)imageWithTintColor: (UIColor *)color
{
    UIImage *img = self;
    
    // lets tint the icon - assumes your icons are black
    UIGraphicsBeginImageContextWithOptions(img.size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextTranslateCTM(context, 0, img.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGRect rect = CGRectMake(0, 0, img.size.width, img.size.height);
    
    // draw alpha-mask
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGContextDrawImage(context, rect, img.CGImage);
    
    // draw tint color, preserving alpha values of original image
    CGContextSetBlendMode(context, kCGBlendModeSourceIn);
    [color setFill];
    CGContextFillRect(context, rect);
    
    UIImage *coloredImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return coloredImage;
}

@end
