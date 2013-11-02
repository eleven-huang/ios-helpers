//
//  UIViewHelper.h
//  ios-helpers
//
//  Created by huang eleven on 11/2/13.
//  Copyright (c) 2013 yijun huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIViewHelper : NSObject

+ (void)ZoominView: (UIView *)aView withFinishBlock: (void (^)())block;
+ (void)ZoomoutView: (UIView *)aView withFinishBlock: (void (^)())block;

@end
