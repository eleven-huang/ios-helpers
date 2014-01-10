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

@end
