//
//  UIAlertView+Extend.m
//  ios-helpers
//
//  Created by huang eleven on 11/2/13.
//  Copyright (c) 2013 yijun huang. All rights reserved.
//

#import "UIAlertView+Extend.h"

@implementation UIAlertView (Extend)

- (void)disableButtonWithTitle: (NSString *)title
{
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:[UIButton class]]) {
            UIButton *button = (UIButton *)view;
            if ([button.titleLabel.text isEqualToString:title]) {
                button.enabled = NO;
            }
        }
    }
}

- (void)enableButtonWithTitle: (NSString *)title
{
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:[UIButton class]]) {
            UIButton *button = (UIButton *)view;
            if ([button.titleLabel.text isEqualToString:title]) {
                button.enabled = YES;
            }
        }
    }
}

@end
