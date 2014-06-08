//
//  UIView+Extension.m
//  ios-helpers
//
//  Created by huang eleven on 1/10/14.
//  Copyright (c) 2014 yijun huang. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)removeAllSubviews
{
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
}

- (void)setWidth: (CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight: (CGFloat)heigth
{
    CGRect frame = self.frame;
    frame.size.height = heigth;
    self.frame = frame;
}

- (void)setOriginY: (CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)setOriginX: (CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

@end
