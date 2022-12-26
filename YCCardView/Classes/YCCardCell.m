//
//  YCCardCell.m
//  YCCardView_Example
//
//  Created by 任义春 on 2021/11/19.
//  Copyright © 2021 renyichun. All rights reserved.
//

#import "YCCardCell.h"

@interface YCCardCell()

// 记录索引
@property (assign, nonatomic) NSInteger recordIndexRow;


@end

@implementation YCCardCell

#pragma mark - 初始化

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initConfig];
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        [self initConfig];
        [self setupUI];
    }
    return self;
}

- (void)initConfig {
    [self p_setShadowRadius];
}

- (void)setupUI {
    [self yc_addSubViews];
    [self yc_addViewConstraints];
}

- (void)layoutSubviews {
    [super layoutSubviews];
}

#pragma mark - 点击事件

#pragma mark - 代理方法


#pragma mark - 对外方法

#pragma mark - 外界控制方法

- (NSInteger)indexRow {
    return self.recordIndexRow;
}

/**
 设置卡片的索引
 */
- (void)yc_setCardIndexRow:(NSInteger )indexRow {
    self.recordIndexRow = indexRow;
}


#pragma mark - 私有方法

// 设置圆角阴影
- (void)p_setShadowRadius {
    self.layer.cornerRadius      = 8;
    self.layer.shadowRadius      = 3;
    self.layer.shadowOpacity     = 0.2;
    self.layer.shadowOffset      = CGSizeMake(1, 1);
    self.layer.shadowPath        = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
    self.layer.masksToBounds = YES;
}

#pragma mark - set/get

#pragma mark - 基类方法

#pragma mark - 基类方法 - 子类可重写

/**
 cell 赋值
 */
- (void)yc_setObject:(id)aObject {
}

/**
 添加子视图
 */
- (void)yc_addSubViews {
}

/**
 添加约束
 */
- (void)yc_addViewConstraints {
    
}

/**
 清除数据
 */
- (void)yc_clearData {
}

/**
 卡片拖拽中
 * @param centerDistance 当前x距离中心的偏移量， 值越大，距离视图中心越远
 * @param isRightDirection 移动的方向，是否为右侧
 */
- (void)yc_cardDragingDistance:(CGFloat )centerDistance dragingDirection:(BOOL )isRightDirection {
    
}

/**
 卡片拖拽结束
 */
- (void)yc_cardDragEnd {
    
}

@end
