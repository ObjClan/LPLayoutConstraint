//
//  LPLayoutConstraint.m
//  LPLayoutConstraint
//
//  Created by jszx on 15/11/26.
//  Copyright © 2015年 jszx. All rights reserved.
//

#import "UIView+LPLayoutConstraint.h"

@implementation UIView(LPLayoutConstraint)

#pragma mark -----------可设置所有属性、返回NSLayoutConstraint，需要添加约束到相应控件--------

-(NSLayoutConstraint *)constraintWithAttribute:(LPLayoutAttribute)att1 ToItem:(id)view2 attribute:(LPLayoutAttribute)att2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant
{
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutAttribute attribute1 = 0;
    NSLayoutAttribute attribute2 = 0;
    switch (att1) {
        case Left:
            attribute1 = NSLayoutAttributeLeft;
            break;
        case Right:
            attribute1 = NSLayoutAttributeRight;
            break;
        case Top:
            attribute1 = NSLayoutAttributeTop;
            break;
        case Bottom:
            attribute1 = NSLayoutAttributeBottom;
            break;
        case CenterX:
            attribute1 = NSLayoutAttributeCenterX;
            break;
        case CenterY:
            attribute1 = NSLayoutAttributeCenterY;
            break;
        case Width:
            attribute1 = NSLayoutAttributeWidth;
            break;
        case Height:
            attribute1 = NSLayoutAttributeHeight;
            break;
        default:
            break;
    }
    switch (att2) {
        case Left:
            attribute2 = NSLayoutAttributeLeft;
            break;
        case Right:
            attribute2 = NSLayoutAttributeRight;
            break;
        case Top:
            attribute2 = NSLayoutAttributeTop;
            break;
        case Bottom:
            attribute2 = NSLayoutAttributeBottom;
            break;
        case CenterX:
            attribute2 = NSLayoutAttributeCenterX;
            break;
        case CenterY:
            attribute2 = NSLayoutAttributeCenterY;
            break;
        case Width:
            attribute2 = NSLayoutAttributeWidth;
            break;
        case Height:
            attribute2 = NSLayoutAttributeHeight;
            break;
        default:
            break;
    }
    return  [NSLayoutConstraint constraintWithItem:self
                                       attribute:attribute1
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:view2
                                       attribute:attribute2
                                       multiplier:multiplier
                                       constant:constant];
}

#pragma mark -----------可设置所有属性、已经将约束添加到相应控件-----------------------

-(void)constraintWithAttribute:(LPLayoutAttribute)att1 ToItem:(id)view2 attribute:(LPLayoutAttribute)att2 addConstraintItem:(id)view3 multiplier:(CGFloat)multiplier constant:(CGFloat)constant
{
    NSLayoutConstraint *constranit =  [self constraintWithAttribute:att1 ToItem:view2 attribute:att2  multiplier:multiplier constant:constant];
    [view3 addConstraint:constranit];
}

#pragma mark -----------只设置宽、已经将约束添加到相应控件----------------------------

-(void)constraintWithWidth:(CGFloat)width
{
    NSLayoutConstraint *W = [self constraintWithAttribute:Width ToItem:nil attribute:Width  multiplier:1.0 constant:width];
    [self addConstraint:W];

}

#pragma mark -----------只设置高、已经将约束添加到相应控件----------------------------

-(void)constraintWithHeight:(CGFloat)height
{
    NSLayoutConstraint *H = [self constraintWithAttribute:Height ToItem:nil attribute:Height  multiplier:1.0 constant:height];
    [self addConstraint:H];
}

#pragma mark -----------只设置centerX、已经将约束添加到相应控件----------------------------

-(void)constraintWithCenterXToItem:(id)view addConstraintItem:(id)view1
{
    NSLayoutConstraint *centerX =  [self constraintWithAttribute:CenterX ToItem:view attribute:CenterX multiplier:1.0 constant:0.0];
    [view1 addConstraint:centerX];
}

#pragma mark -----------只设置centerY、已经将约束添加到相应控件----------------------------

-(void)constraintWithCenterYToItem:(id)view addConstraintItem:(id)view1
{
    NSLayoutConstraint *centerY =  [self constraintWithAttribute:CenterY ToItem:view attribute:CenterY multiplier:1.0 constant:0.0];
    [view1 addConstraint:centerY];
}

#pragma mark -----------只设置宽、高、已经将约束添加到相应控件----------------------------

-(void)constraintWithWidth:(CGFloat)width height:(CGFloat)height
{
    NSLayoutConstraint *W = [self constraintWithAttribute:Width ToItem:nil attribute:Width  multiplier:1.0 constant:width];
    NSLayoutConstraint *H = [self constraintWithAttribute:Height ToItem:nil attribute:Height  multiplier:1.0 constant:height];
    [self addConstraint:W];
    [self addConstraint:H];
}

#pragma mark -----------设置中点、已经将约束添加到相应控件----------------------------

-(void)constraintWithCenterToItem:(id)view addConstraintItem:(id)view1
{
    NSLayoutConstraint *centerX =  [self constraintWithAttribute:CenterX ToItem:view attribute:CenterX multiplier:1.0 constant:0.0];
    NSLayoutConstraint *centerY =  [self constraintWithAttribute:CenterY ToItem:view attribute:CenterY multiplier:1.0 constant:0.0];
    [view1 addConstraint:centerX];
    [view1 addConstraint:centerY];
}
@end
