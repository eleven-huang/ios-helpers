//
//  UIViewHelper.m
//  ios-helpers
//
//  Created by huang eleven on 11/2/13.
//  Copyright (c) 2013 yijun huang. All rights reserved.
//

#import "UIViewHelper.h"

@implementation UIViewHelper

+ (void)ZoominView: (UIView *)aView withFinishBlock: (void (^)())block
{
    CGAffineTransform transformStep1 = CGAffineTransformMakeScale(1.1f, 1.1f);
    CGAffineTransform transformStep2 = CGAffineTransformMakeScale(1, 1);
    
    [UIView animateWithDuration:0.3f delay:0.0f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        aView.layer.affineTransform = transformStep1;
        
    }completion:^(BOOL finished){
        if (finished) {
            [UIView animateWithDuration:0.3f animations:^{
                aView.layer.affineTransform = transformStep2;
            } completion:^(BOOL finished) {
                block();
            }];
        }
    }];
}

+ (void)ZoomoutView: (UIView *)aView withFinishBlock: (void (^)())block
{
    CGAffineTransform transformStep1 = CGAffineTransformMakeScale(1.1f, 1.1f);
    CGAffineTransform transformStep2 = CGAffineTransformMakeScale(0, 0);
    
    [UIView animateWithDuration:0.3f delay:0.0f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        aView.layer.affineTransform = transformStep1;
        
    }completion:^(BOOL finished){
        if (finished) {
            [UIView animateWithDuration:0.3f animations:^{
                aView.layer.affineTransform = transformStep2;
            } completion:^(BOOL finished) {
                block();
            }];
        }
    }];
}

@end
