//
//  CookiesHelper.m
//  ios-helpers
//
//  Created by huang eleven on 11/5/13.
//  Copyright (c) 2013 yijun huang. All rights reserved.
//

#import "CookiesHelper.h"

@implementation CookiesHelper

+ (void)storeCookiesWithURL: (NSString *)url_string
{
    
    NSArray* allCookies = [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookiesForURL:[NSURL URLWithString:url_string]];
    NSData *cookiesData = [NSKeyedArchiver archivedDataWithRootObject:allCookies];
    
    [[NSUserDefaults standardUserDefaults] setObject:cookiesData forKey:[self cookiesStoreKeyWithURL:url_string]];
}

+ (void)loadCookiesWithURL: (NSString *)url_string
{
    
    NSData *cookiesData = [[NSUserDefaults standardUserDefaults] objectForKey:[self cookiesStoreKeyWithURL:url_string]];
    NSArray *cookies = [NSKeyedUnarchiver unarchiveObjectWithData:cookiesData];
    
    [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookies:cookies forURL:[NSURL URLWithString:url_string] mainDocumentURL:nil];
}

+ (void)removeCookiesWithURL: (NSString *)url_string
{
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:[self cookiesStoreKeyWithURL:url_string]];
    
}

+ (NSArray *)cookiesWithURL:(NSString *)url_string
{
    NSData *cookiesData = [[NSUserDefaults standardUserDefaults] objectForKey:[self cookiesStoreKeyWithURL:url_string]];
    
    if (cookiesData) {
        NSArray *cookies = [NSKeyedUnarchiver unarchiveObjectWithData:cookiesData];
        
        return cookies;
    }
    
    return nil;
}

+ (NSString *)cookiesStoreKeyWithURL: (NSString *)url_string
{
    return [NSString stringWithFormat:@"%@#eleven-huang#cookies#helper", url_string];
}

@end
