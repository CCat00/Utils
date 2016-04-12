//
//  NSObject+HUD.h
//  Utils
//
//  Created by 韩威 on 16/4/12.
//  Copyright © 2016年 韩威. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MBProgressHUD/MBProgressHUD.h>

#define kKeyWindow [UIApplication sharedApplication].keyWindow

@interface NSObject (HUD)

+ (void)showToastWithString:(NSString *)str;

+ (void)showLoadingWithString:(NSString *)str;
+ (void)hiddenLoading;

@end
