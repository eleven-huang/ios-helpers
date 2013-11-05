//
//  CookiesHelper.m
//  ios-helpers
//
//  Created by huang eleven on 11/5/13.
//  Copyright (c) 2013 yijun huang. All rights reserved.
//

#import "CookiesHelper.h"

@implementation CookiesHelper

static NSString *cookiesIdentity = @"eleven-huang#cookies#helper";

+ (void)storeCookiesWithURL: (NSString *)url_string
{
    
    NSArray* allCookies = [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookiesForURL:[NSURL URLWithString:url_string]];
    NSData *cookiesData = [NSKeyedArchiver archivedDataWithRootObject:allCookies];
    
    [[NSUserDefaults standardUserDefaults] setObject:cookiesData forKey:[NSString stringWithFormat:@"%@%@", url_string, cookiesIdentity]];
}

+ (void)loadCookiesWithURL: (NSString *)url_string
{
    
    NSData *cookiesData = [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"%@%@", url_string, cookiesIdentity]];
    NSArray *cookies = [NSKeyedUnarchiver unarchiveObjectWithData:cookiesData];
    
    [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookies:cookies forURL:[NSURL URLWithString:url_string] mainDocumentURL:nil];
}

+ (void)removeCookiesWithURL: (NSString *)url_string
{
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:[NSString stringWithFormat:@"%@%@", url_string, cookiesIdentity]];
}

@end
