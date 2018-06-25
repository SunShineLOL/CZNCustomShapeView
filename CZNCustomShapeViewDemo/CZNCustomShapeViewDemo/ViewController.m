//
//  ViewController.m
//  CZNCustomShapeViewDemo
//
//  Created by Honey on 2018/6/25.
//  Copyright © 2018年 CZN. All rights reserved.
//

#import "ViewController.h"
#import "CZNCustomShapeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createView];
}
#pragma mark ->createVeiw
- (void)createView{
    CZNCustomShapeView *customShapeView = [[CZNCustomShapeView alloc] initWithFrame:CGRectMake(0, 0, 165, 150)];
    customShapeView.backgroundColor = [UIColor redColor];
    customShapeView.center = self.view.center;
    
    //设置边框阴影
    customShapeView.layer.shadowColor = [UIColor blackColor].CGColor;
    customShapeView.layer.shadowOffset = CGSizeMake(0, 0);
    customShapeView.layer.shadowOpacity = 0.4f;
    customShapeView.layer.shadowRadius = 8;
    //layer贝塞尔路径(该路径就是最终显示效果)
    customShapeView.maskBezierPath = [self createMaskBezierPathWithSize:customShapeView.frame.size];
    [self.view addSubview:customShapeView];
}
- (UIBezierPath *)createMaskBezierPathWithSize:(CGSize)size{
    CGFloat viewWidth = size.width;
    CGFloat viewHeight = size.height;
    CGFloat topSpace = 10;
    CGPoint point1 = CGPointMake(0, topSpace);
    CGPoint point2 = CGPointMake(viewWidth/2.0f-7.5, topSpace);
    CGPoint point3 = CGPointMake(viewWidth/2, 0);
    CGPoint point4 = CGPointMake(viewWidth/2+7.5, topSpace);
    CGPoint point5 = CGPointMake(viewWidth, topSpace);
    CGPoint point6 = CGPointMake(viewWidth, viewHeight);
    CGPoint point7 = CGPointMake(0, viewHeight);
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:point1];
    [path addLineToPoint:point2];
    [path addLineToPoint:point3];
    [path addLineToPoint:point4];
    [path addLineToPoint:point5];
    [path addLineToPoint:point6];
    [path addLineToPoint:point7];
    [path closePath];
    //    CAShapeLayer *layer = [CAShapeLayer layer];
    //    layer.shadowPath = path.CGPath;
    return path;
}

@end
