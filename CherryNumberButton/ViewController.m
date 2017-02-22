//
//  ViewController.m
//  CherryNumberButton
//
//  Created by zhangmin on 17/2/22.
//  Copyright © 2017年 zhangmin. All rights reserved.
//

#import "ViewController.h"
#import "ZMButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self example1];
    [self example2];
    [self example3];
    [self example4];
    // Do any additional setup after loading the view, typically from a nib.
}
/**
 自定义加减按钮文字标题
 */
- (void)example1
{
    ZMButton *numberButton = [ZMButton createNumberButtonWithFrame:CGRectMake(100, 100, 110, 30)];
    // 开启抖动动画
    numberButton.isShakeAnimation = YES;
    // 设置最小值
    numberButton.minValue = 0;
    // 设置最大值
    numberButton.maxValue = 10;
    // 设置输入框中的字体大小
    numberButton.inputFieldFont = 23;
    numberButton.increaseTitle = @"＋";
    numberButton.decreaseTitle = @"－";
    numberButton.currentNumber = 777;
//    numberButton.delegate = self;
    
    numberButton.dataResultBlock = ^(NSInteger num ,BOOL increaseStatus){
        NSLog(@"%ld",num);
    };
    [self.view addSubview:numberButton];
}

- (void)pp_numberButton:(__kindof UIView *)numberButton number:(NSInteger)number increaseStatus:(BOOL)increaseStatus
{
    NSLog(@"-------%@",increaseStatus ? @"加运算":@"减运算");
}

/**
 边框状态
 */
- (void)example2
{
     ZMButton *numberButton = [ZMButton createNumberButtonWithFrame:CGRectMake(100, 160, 150, 30)];
    //设置边框颜色
    numberButton.borderColor = [UIColor grayColor];
    numberButton.increaseTitle = @"＋";
    numberButton.decreaseTitle = @"－";
    numberButton.currentNumber = 777;
    numberButton.dataResultBlock = ^(NSInteger num ,BOOL increaseStatus){
        NSLog(@"%ld",num);
    };
    
    [self.view addSubview:numberButton];
}


/**
 自定义加减按钮背景图片
 */
- (void)example3
{
     ZMButton *numberButton = [ZMButton createNumberButtonWithFrame:CGRectMake(100, 220, 100, 30)];
    numberButton.isShakeAnimation = YES;
    numberButton.increaseImage = [UIImage imageNamed:@"increase_taobao"];
    numberButton.decreaseImage = [UIImage imageNamed:@"decrease_taobao"];
    
    numberButton.dataResultBlock = ^(NSInteger num ,BOOL increaseStatus){
        NSLog(@"%ld",num);
    };
    
    [self.view addSubview:numberButton];
}

/**
 饿了么,美团外卖,百度外卖样式
 */
- (void)example4
{
     ZMButton *numberButton = [ZMButton createNumberButtonWithFrame:CGRectMake(100, 280, 100, 30)];
    // 初始化时隐藏减按钮
    numberButton.decreaseHideButton = YES;
    numberButton.increaseImage = [UIImage imageNamed:@"increase_meituan"];
    numberButton.decreaseImage = [UIImage imageNamed:@"decrease_meituan"];
    numberButton.currentNumber = -777;
    numberButton.dataResultBlock = ^(NSInteger num ,BOOL increaseStatus){
        NSLog(@"%ld",num);
    };
    
    [self.view addSubview:numberButton];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
