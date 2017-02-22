//
//  ZMButton.h
//  CherryNumberButton
//
//  Created by zhangmin on 17/2/22.
//  Copyright © 2017年 zhangmin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZMButton : UIView

+(instancetype)createNumberButtonWithFrame:(CGRect)rect;

@property(copy,nonatomic) void(^dataResultBlock)(NSInteger number,BOOL isIncreaseStatus);

/**
    default   is   1
 */
@property (nonatomic, assign) NSInteger minValue;


@property (nonatomic, assign) NSInteger maxValue;


/**
 是否开启抖动按钮  default   is   no
 */
@property(nonatomic,assign) IBInspectable BOOL   isShakeAnimation;


/**
  减号隐藏按钮
 */
@property(nonatomic ,assign) IBInspectable BOOL  decreaseHideButton;

/** 设置边框的颜色,如果没有设置颜色,就没有边框 */
@property (nonatomic, strong ) IBInspectable UIColor *borderColor;

/** 输入框中的内容 */
@property (nonatomic, assign) NSInteger currentNumber;

@property (nonatomic, assign, getter=isEditing) IBInspectable BOOL editing;


/** 输入框中的字体大小 */
@property (nonatomic, assign ) IBInspectable CGFloat inputFieldFont;



/** 加减按钮的字体大小 */
@property (nonatomic, assign ) IBInspectable CGFloat buttonTitleFont;


/** 加按钮背景图片 */
@property (nonatomic, strong ) IBInspectable UIImage *increaseImage;



/** 减按钮背景图片 */
@property (nonatomic, strong ) IBInspectable UIImage *decreaseImage;


/** 加按钮标题 */
@property (nonatomic, copy   ) IBInspectable NSString *increaseTitle;


/** 减按钮标题 */

@property (nonatomic, copy   ) IBInspectable NSString *decreaseTitle;


@end


@interface NSString (ZMButton)
/**
 字符串 nil, @"", @"  ", @"\n" Returns NO;
 其他 Returns YES.
 */
- (BOOL)isNotBlank;
@end
