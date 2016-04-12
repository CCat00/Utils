//
//  NSString+Utils.h
//  Utils
//
//  Created by 韩威 on 16/4/12.
//  Copyright © 2016年 韩威. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
#import <CommonCrypto/CommonDigest.h>

@interface NSString (Utils)

- (BOOL)isNotEmpty;

/**
 *  是否包含Emoji
 */
- (BOOL)isContainsEmojiString;


/**
 *  检测格式合法性
 */
//检测是否是邮箱
- (BOOL)isValidEmail;

//检测是否是手机号
- (BOOL)isValidMobilePhoneNum;

//检测是否合法座机
- (BOOL)isValidPhoneNum;

//检测是否合法邮政编码
- (BOOL)isValidMailCode;

//检测是否是身份证号
- (BOOL)isValidPersonCardNum;

//检测是否是车牌号
- (BOOL)isValidCarNum;

//判断是否为整形
- (BOOL)isPureInt;

//判断是否为浮点形
- (BOOL)isPureFloat;

/**
 *  MD5
 */
- (NSString *)md5Str;

/**
 *  计算文字大小
 */
- (CGSize)getSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size;

@end
