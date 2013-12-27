//
//  UIView+Extend.m
//  ios-helpers
//
//  Created by huang eleven on 12/27/13.
//  Copyright (c) 2013 yijun huang. All rights reserved.
//

#import "UIView+Extend.h"

@implementation UIView (Extend)

- (void)removeAllSubviews
{
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
}

@end
