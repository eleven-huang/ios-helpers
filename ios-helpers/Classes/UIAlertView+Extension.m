//
//  UIAlertView+Extension.m
//  ios-helpers
//
//  Created by huang eleven on 1/10/14.
//  Copyright (c) 2014 yijun huang. All rights reserved.
//

#import "UIAlertView+Extension.h"

@implementation UIAlertView (Extension)

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
