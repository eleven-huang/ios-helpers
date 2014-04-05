//
//  NSString+Extension.m
//  ios-helpers
//
//  Created by huang eleven on 1/19/14.
//  Copyright (c) 2014 yijun huang. All rights reserved.
//

#import "NSString+Extension.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Extension)

- (NSString *)MD5String
{
    const char *cstr = [self UTF8String];
    unsigned char result[16];
    CC_MD5(cstr, strlen(cstr), result);
    
    return [NSString stringWithFormat:
            @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (BOOL)empty
{
    if (!self || [self isEqualToString:@""]) {
        return true;
    }
    
    return false;
}

+ (NSString *)fromFloat: (float)value
{
    return [NSString stringWithFormat:@"%f", value];
}

+ (NSString *)fromInteger: (int)value
{
    return [NSString stringWithFormat:@"%d", value];
}

@end
