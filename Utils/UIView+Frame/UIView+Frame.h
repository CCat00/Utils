//
//  UIView+Frame.h
//  Utils
//
//  Created by 韩威 on 16/4/12.
//  Copyright © 2016年 韩威. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <CoreGraphics/CoreGraphics.h>

@interface UIView (Frame)

/**
 *  return self.frame.origin.x
 */
@property (nonatomic, assign) CGFloat left_h;

/**
 *  return self.frame.origin.y
 */
@property (nonatomic, assign) CGFloat top_h;

/**
 *  return self.frame.origin.x + self.frame.size.width
 */
@property (nonatomic, assign) CGFloat right_h;

/**
 *  return self.frame.origin.y + self.frame.size.height
 */
@property (nonatomic, assign) CGFloat bottom_h;

/**
 *  return self.size_h.width
 */
@property (nonatomic, assign) CGFloat width_h;

/**
 *  return self.size_h.height
 */
@property (nonatomic, assign) CGFloat height_h;

/**
 *  return self.center.x
 */
@property (nonatomic, assign) CGFloat centerX_h;

/**
 *  return self.center.y
 */
@property (nonatomic, assign) CGFloat centerY_h;

/**
 *  return self.frame.size
 */
@property (nonatomic, assign) CGSize size_h;

@end


@interface UIView (ViewController)

- (UIViewController *)viewController_h;

@end
