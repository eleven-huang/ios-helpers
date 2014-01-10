//
//  UIScrollView+DeliveryEvent.m
//  ios-helpers
//
//  Created by huang eleven on 1/10/14.
//  Copyright (c) 2014 yijun huang. All rights reserved.
//

#import "UIScrollView+DeliveryEvent.h"

@implementation UIScrollView (DeliveryEvent)

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (self.isDragging) {
        [super touchesEnded:touches withEvent:event];
    } else {
        [self.nextResponder touchesEnded:touches withEvent:event];
    }
}
@end
