//
//  NXLine.h
//  shufaEducation
//
//  Created by N-X on 2019/6/10.
//  Copyright © 2019 NX. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NXLine : UIView

@property (nonatomic ,assign)IBInspectable CGFloat  lineWidth;
@property (nonatomic ,strong)IBInspectable UIColor * lineColor;
@property (nonatomic ,assign)IBInspectable CGFloat  paddingLeft;
@property (nonatomic ,assign)IBInspectable CGFloat  paddingRight;
@property (nonatomic ,assign)IBInspectable CGFloat  paddingTop;
@property (nonatomic ,assign)IBInspectable CGFloat  paddingBottom;
@property (nonatomic ,assign)IBInspectable BOOL  isHorizontal;
@property (nonatomic ,assign)IBInspectable BOOL  isDash;
@property (nonatomic ,assign)IBInspectable CGFloat  dashPointWidth;
@property (nonatomic ,assign)IBInspectable CGFloat  dashSpcae;

@end

NS_ASSUME_NONNULL_END
