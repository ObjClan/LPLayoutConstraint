//
//  ViewController.m
//  LPLayoutConstraint
//
//  Created by jszx on 15/11/26.
//  Copyright © 2015年 jszx. All rights reserved.
//

#import "ViewController.h"
#import "UIView+LPLayoutConstraint.h"

@interface ViewController ()
@property(nonatomic,strong)NSLayoutConstraint *left;
@property(nonatomic,strong)NSLayoutConstraint *right;
@property(nonatomic,strong)NSLayoutConstraint *top;
@property(nonatomic,strong)NSLayoutConstraint *width;
@property(nonatomic,strong)UIView *contentView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.contentView = [[UIView alloc] init];
    self.contentView .backgroundColor = [UIColor redColor];
    [self.view addSubview:self.contentView ];
    self.left = [self.contentView  constraintWithAttribute:Left ToItem:self.view attribute:Left multiplier:1.0 constant:0.0];
    self.right = [self.contentView  constraintWithAttribute:Right ToItem:self.view attribute:Right multiplier:1.0 constant:0.0];
    self.width = [self.contentView  constraintWithAttribute:Height ToItem:self.view attribute:Height multiplier:0.5 constant:0.0];
    self.top = [self.contentView  constraintWithAttribute:Top ToItem:self.view attribute:Top multiplier:1.0 constant:20];
    
    [self.view addConstraint:self.left];
    [self.view addConstraint:self.right];
    [self.view addConstraint:self.top];
    [self.view addConstraint:self.width];
    
    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"请点击我" forState:UIControlStateNormal];
    [btn setTintColor:[UIColor whiteColor]];
    
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    [btn constraintWithAttribute:CenterX ToItem:self.view attribute:CenterX addConstraintItem:self.view multiplier:1.0 constant:0.0];
    [btn constraintWithAttribute:CenterY ToItem:self.view attribute:CenterY addConstraintItem:self.view multiplier:1.0 constant:0.0];
    [btn constraintWithAttribute:Width ToItem:nil attribute:Width addConstraintItem:btn multiplier:1.0 constant:100];
    [btn constraintWithAttribute:Height ToItem:nil attribute:Height addConstraintItem:btn multiplier:1.0 constant:60];
    
    
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor whiteColor];
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor blackColor];
    [self.contentView addSubview:view1];
    [self.contentView addSubview:view2];
    
    [view2 constraintWithAttribute:Width ToItem:self.contentView attribute:Width addConstraintItem:self.contentView multiplier:0.5 constant:-20];
    [view2 constraintWithAttribute:Height ToItem:self.contentView attribute:Height addConstraintItem:self.contentView multiplier:0.5 constant:-10];
    [view2 constraintWithAttribute:Top ToItem:self.contentView attribute:Top addConstraintItem:self.contentView multiplier:1.0 constant:10];
    [view2 constraintWithAttribute:Left ToItem:self.contentView attribute:Left addConstraintItem:self.contentView multiplier:1.0 constant:10];
    
    [view1 constraintWithAttribute:Width ToItem:view2 attribute:Width addConstraintItem:self.contentView multiplier:1.0 constant:0.0];
    [view1 constraintWithAttribute:Height ToItem:view2 attribute:Height addConstraintItem:self.contentView multiplier:1.0 constant:0.0];
    [view1 constraintWithAttribute:CenterY ToItem:view2 attribute:CenterY addConstraintItem:self.contentView multiplier:1.0 constant:0.0];
    [view1 constraintWithAttribute:Right ToItem:self.contentView attribute:Right addConstraintItem:self.contentView multiplier:1.0 constant:-10];
    
    UIView *view3 = [[UIView alloc] init];
    view3.backgroundColor = [UIColor yellowColor];
    [view1 addSubview:view3];
    [view3 constraintWithCenterXToItem:view1 addConstraintItem:view1];
    [view3 constraintWithCenterYToItem:view1 addConstraintItem:view1];
    [view3 constraintWithWidth:50];
    [view3 constraintWithHeight:60];
    
    UIView *view4 = [[UIView alloc] init];
    view4.backgroundColor = [UIColor yellowColor];
    [view2 addSubview:view4];
    [view4 constraintWithCenterToItem:view2 addConstraintItem:view2];
    [view4 constraintWithWidth:50 height:60];
    
    UIView *view5 = [[UIView alloc] init];
    view5.backgroundColor = [UIColor grayColor];
    [view4 addSubview:view5];
    [view5 constraintWithAttribute:Top ToItem:view4 attribute:Top addConstraintItem:view4 multiplier:1.0 constant:0.0];
    [view5 constraintWithAttribute:Left ToItem:view4 attribute:Left addConstraintItem:view4 multiplier:1.0 constant:0.0];
    [view5 constraintWithAttribute:Width ToItem:view4 attribute:Width addConstraintItem:view4 multiplier:0.5 constant:0.0];
    [view5 constraintWithAttribute:Height ToItem:view4 attribute:Height addConstraintItem:view4 multiplier:0.2 constant:0.0];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)click {
   
    [UIView animateWithDuration:2.0f animations:^{
        self.width.constant = self.width.constant + 100;
        [self.contentView layoutIfNeeded]; //刷新视图，执行动画代码之后调用
    }];
    
}

@end
