//
//  UIView+Frame.m
//  Utils
//
//  Created by 韩威 on 16/4/12.
//  Copyright © 2016年 韩威. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)


/**
 *  X
 */
- (void)setLeft_h:(CGFloat)left_h {
    CGRect frame = self.frame;
    frame.origin.x = left_h;
    self.frame = frame;
}

- (CGFloat)left_h {
    return self.frame.origin.x;
}

/**
 *  Y
 */
- (void)setTop_h:(CGFloat)top_h {
    CGRect frame = self.frame;
    frame.origin.y = top_h;
    self.frame = frame;
}

- (CGFloat)top_h {
    return self.frame.origin.y;
}

/**
 *  Right
 */
- (void)setRight_h:(CGFloat)right_h {
    CGRect frame = self.frame;
    frame.origin.x = right_h - frame.size.width;
    self.frame = frame;
}

- (CGFloat)right_h {
    return self.frame.origin.x + self.frame.size.width;
}

/**
 *  Bottom
 */
- (void)setBottom_h:(CGFloat)bottom_h {
    CGRect frame = self.frame;
    frame.origin.y = bottom_h - frame.size.height;
    self.frame = frame;
}

- (CGFloat)bottom_h {
    return self.frame.origin.y + self.frame.size.height;
}

/**
 *  Width
 */
- (void)setWidth_h:(CGFloat)width_h {
    CGRect frame = self.frame;
    frame.size.width = width_h;
    self.frame = frame;
}

- (CGFloat)width_h {
    return self.size_h.width;
}

/**
 *  Height
 */
- (void)setHeight_h:(CGFloat)height_h {
    CGRect frame = self.frame;
    frame.size.height = height_h;
    self.frame = frame;
}

- (CGFloat)height_h {
    return self.size_h.height;
}

/**
 *  CenterX
 */
- (void)setCenterX_h:(CGFloat)centerX_h {
    self.center = CGPointMake(centerX_h, self.center.y);
}

- (CGFloat)centerX_h {
    return self.center.x;
}

/**
 *  CenterY
 */
- (void)setCenterY_h:(CGFloat)centerY_h {
    self.center = CGPointMake(self.center.x, centerY_h);
}

- (CGFloat)centerY_h {
    return self.center.y;
}

/**
 *  Size
 */
- (void)setSize_h:(CGSize)size_h {
    CGRect frame = self.frame;
    frame.size = size_h;
    self.frame = frame;
}

- (CGSize)size_h {
    return self.frame.size;
}

@end



@implementation UIView (ViewController)

- (UIViewController *)viewController_h {
    UIResponder *next = [self nextResponder];
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = [next nextResponder];
        
    } while (next != nil);
    return nil;
}

@end
