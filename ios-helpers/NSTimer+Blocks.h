//
//  NSTimer+Blocks.h
//  ios-helpers
//
//  Created by huang eleven on 11/2/13.
//  Copyright (c) 2013 yijun huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Blocks)

+(id)scheduledTimerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;
+(id)timerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;

@end
