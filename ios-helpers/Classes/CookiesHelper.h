//
//  CookiesHelper.h
//  ios-helpers
//
//  Created by huang eleven on 11/5/13.
//  Copyright (c) 2013 yijun huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CookiesHelper : NSObject

+ (void)storeCookiesWithURL: (NSString *)url_string;
+ (NSArray *)cookiesWithURL: (NSString *)url_string;
+ (void)loadCookiesWithURL: (NSString *)url_string;
+ (void)removeCookiesWithURL: (NSString *)url_string;

@end
