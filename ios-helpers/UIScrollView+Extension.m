//
//  UIScrollView+Extension.m
//  ios-helpers
//
//  Created by huang eleven on 1/10/14.
//  Copyright (c) 2014 yijun huang. All rights reserved.
//

#import "UIScrollView+Extension.h"

@implementation UIScrollView (Extension)

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (!self.dragging)
        [self.nextResponder touchesEnded: touches withEvent:event];
    else
        [super touchesEnded: touches withEvent: event];
}

@end
