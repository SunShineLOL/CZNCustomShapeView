//
//  CZNCustomShapeView.h
//  starrank
//
//  Created by Honey on 2018/6/23.
//  Copyright © 2018年 skip. All rights reserved.
//
/**
 * 该视图解决使用 layer.mask 与视图阴影无法同时显示的问题
 * maskBezierPath 该路径就是视图的最终显示效果
 * 示例项目:gitHub:https://github.com/SunShineLOL/CZNCustomShapeView.git
 */
#import <UIKit/UIKit.h>

@interface CZNCustomShapeView : UIView
@property (nonatomic,strong)UIBezierPath *maskBezierPath;
@end
