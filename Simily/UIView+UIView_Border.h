//
//  UIView+UIView_Border.h
//  Simily
//
//  Created by Chris Li on 3/8/15.
//  Copyright (c) 2015 Simily. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIView_Border)

- (void)addBottomBorderWithColor: (UIColor *) color andWidth:(CGFloat) borderWidth;

- (void)addLeftBorderWithColor: (UIColor *) color andWidth:(CGFloat) borderWidth;

- (void)addRightBorderWithColor: (UIColor *) color andWidth:(CGFloat) borderWidth;

- (void)addTopBorderWithColor: (UIColor *) color andWidth:(CGFloat) borderWidth;

@end
