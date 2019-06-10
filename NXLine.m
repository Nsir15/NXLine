//
//  NXLine.m
//  shufaEducation
//
//  Created by N-X on 2019/6/10.
//  Copyright © 2019 NX. All rights reserved.
//  目的是为了画线，同时支持xib拖虚线之类的

#import "NXLine.h"

IB_DESIGNABLE

@implementation NXLine



- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGFloat startX = 0,startY = 0,endX = 0,endY = 0;
    if (_isHorizontal) {
        startX = _paddingLeft;
        startY = rect.size.height * 0.5;
        endX = rect.size.width - _paddingRight;
        endY = startY;
    }else
    {
        startX = rect.size.width * 0.5;
        startY = _paddingTop;
        endX = startX;
        endY = rect.size.height - _paddingBottom;
    }
    UIBezierPath * path = [UIBezierPath bezierPath];
    CGPoint startPoint = CGPointMake(startX, startY);
    CGPoint endPoint = CGPointMake(endX, endY);
    [path moveToPoint:startPoint];
    [path addLineToPoint:endPoint];
    CGContextAddPath(context, path.CGPath);
    CGContextSetLineWidth(context, _lineWidth);
    CGContextSetStrokeColorWithColor(context, _lineColor.CGColor);
    if (_dashSpcae) {
        CGContextSetLineDash(context, 0, &(_dashPointWidth), _dashSpcae);
    }
    CGContextDrawPath(context, kCGPathFillStroke);
}


@end
