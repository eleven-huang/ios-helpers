//
//  UIScrollView+DeliveryAllEvents.m
//  ios-helpers
//
//  Created by huang eleven on 1/19/14.
//  Copyright (c) 2014 yijun huang. All rights reserved.
//

#import "UIScrollView+DeliveryAllEvents.h"

@implementation UIScrollView (DeliveryAllEvents)

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.nextResponder touchesEnded:touches withEvent:event];
}

@end
