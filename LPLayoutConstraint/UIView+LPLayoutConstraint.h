//
//  LPLayoutConstraint.h
//  LPLayoutConstraint
//
//  Created by jszx on 15/11/26.
//  Copyright © 2015年 jszx. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM (NSInteger,LPLayoutAttribute)
{
    Left,
    Right,
    Top,
    Bottom,
    CenterX,
    CenterY,
    Width,
    Height
};
@interface UIView(LPLayoutConstraint)

/**
 *  返回NSLayoutConstraint，需要添加约束到相应控件
 *
 *  @param att1       被设置约束控件的属性
 *  @param view2      参照控件
 *  @param att2       参照控件的constranit属性
 *  @param multiplier 比例
 *  @param constant   偏移值，如果参数控件的属性为bottom或right，该值应为负
 *
 */
-(NSLayoutConstraint *)constraintWithAttribute:(LPLayoutAttribute)att1 ToItem:(id)view2 attribute:(LPLayoutAttribute)att2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

/**
 *  已经将约束添加到相应控件
 *
 *  @param att1       被设置约束控件的属性
 *  @param view2      参照控件
 *  @param att2       参照控件的constranit属性
 *  @param view3      将该约束添加到哪个控件
 *  @param multiplier 比例
 *  @param constant   偏移值，如果参数控件的属性为bottom或right，该值应为负
 */
-(void)constraintWithAttribute:(LPLayoutAttribute)att1 ToItem:(id)view2 attribute:(LPLayoutAttribute)att2 addConstraintItem:(id)view3 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

/**
 *  只设置宽度，高度
 *
 *  @param width  宽
 *  @param height 高
 */
-(void)constraintWithWidth:(CGFloat)width height:(CGFloat)height;

/**
 *  只设置中点
 *
 *  @param view  参照控件
 *  @param view1 将该约束添加到哪个控件
 */
-(void)constraintWithCenterToItem:(id)view addConstraintItem:(id)view1;

/**
 *  只设置宽度
 *  @param width  宽
 */
-(void)constraintWithWidth:(CGFloat)width;
/**
 *  只设置高度
 *  @param height 高
 */
-(void)constraintWithHeight:(CGFloat)height;
/**
 *  只设置centerX
 *
 *  @param view  参照控件
 *  @param view1 将该约束添加到哪个控件
 */
-(void)constraintWithCenterXToItem:(id)view addConstraintItem:(id)view1;
/**
 *  只设置centerY
 *
 *  @param view  参照控件
 *  @param view1 将该约束添加到哪个控件
 */
-(void)constraintWithCenterYToItem:(id)view addConstraintItem:(id)view1;
@end
