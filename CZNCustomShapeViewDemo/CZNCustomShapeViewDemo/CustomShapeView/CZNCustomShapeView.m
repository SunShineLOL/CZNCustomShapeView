//
//  CZNCustomShapeView.m
//  starrank
//
//  Created by Honey on 2018/6/23.
//  Copyright © 2018年 skip. All rights reserved.
//

#import "CZNCustomShapeView.h"
@interface CZNCustomShapeView()

@end
@implementation CZNCustomShapeView


+ (Class)layerClass {
    return [CAShapeLayer class];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        ((CAShapeLayer *)self.layer).fillColor = [UIColor colorWithRed:0 green:1 blue:1 alpha:1.0].CGColor;
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    ((CAShapeLayer *)self.layer).path = self.maskBezierPath.CGPath;
    
}

- (void)setBackgroundColor:(UIColor *)backgroundColor {
    ((CAShapeLayer *)self.layer).fillColor = backgroundColor.CGColor;
}

@end
