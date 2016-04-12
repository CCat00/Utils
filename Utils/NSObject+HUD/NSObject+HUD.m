//
//  NSObject+HUD.m
//  Utils
//
//  Created by 韩威 on 16/4/12.
//  Copyright © 2016年 韩威. All rights reserved.
//

#import "NSObject+HUD.h"

#define kHUDLoadingTag 7001

@implementation NSObject (HUD)

+ (void)showToastWithString:(NSString *)str {
    if (str && [str length] > 0) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
        hud.mode = MBProgressHUDModeText;
        hud.margin = 10.f;
        hud.yOffset = 100.f;
        hud.detailsLabelFont = [UIFont boldSystemFontOfSize:14.f];
        hud.removeFromSuperViewOnHide = YES;
        hud.detailsLabelText = str;
        NSTimeInterval timeInterval = [str length] > 10 ? 2.f : 1.f;
        [hud hide:YES afterDelay:timeInterval];
    }
}

+ (void)showLoadingWithString:(NSString *)str {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.tag = kHUDLoadingTag;
    //hud.margin = 10.f;
    hud.labelText = str;
    hud.labelFont = [UIFont boldSystemFontOfSize:14.f];
}

+ (void)hiddenLoading {
    NSArray *allHuds = [MBProgressHUD allHUDsForView:kKeyWindow];
    [allHuds enumerateObjectsUsingBlock:^(MBProgressHUD  *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj.tag == kHUDLoadingTag) {
            [obj removeFromSuperview];
        }
    }];
}

@end
