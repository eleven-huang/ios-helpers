//
//  UIBezierPath+Image.h
//  ios-helpers
//
//  Created by huang eleven on 6/8/14.
//  Copyright (c) 2014 yijun huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBezierPath (Image)

- (UIImage *)imageWithStrokeColor: (UIColor *)stroke_color andFillColor: (UIColor *)fill_color;

@end
