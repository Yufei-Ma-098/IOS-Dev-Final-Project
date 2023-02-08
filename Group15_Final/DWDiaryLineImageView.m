//
//  DWDiaryLineImageView.m
//  Group15_Final
//
//  Created by Yqi on 2020/12/28.
//  Copyright © 2020 yueqi. All rights reserved.
//

#import "DWDiaryLineImageView.h"
#import "Constants.h"

@implementation DWDiaryLineImageView

- (instancetype)initWithFrame:(CGRect)frame lineWidth:(CGFloat)width{
    if (self = [super initWithFrame:frame]) {
        UIGraphicsBeginImageContext(self.frame.size);
        [self.image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
        CGContextSetLineWidth(UIGraphicsGetCurrentContext(), width);
        CGContextSetAllowsAntialiasing(UIGraphicsGetCurrentContext(), YES);
        CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 201 / 255, 201 / 255, 201 / 255, 1.0);
        CGContextBeginPath(UIGraphicsGetCurrentContext());
        CGContextMoveToPoint(UIGraphicsGetCurrentContext(), 0, self.frame.size.height / 2);
        CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), self.frame.size.width, self.frame.size.height / 2);
        CGContextStrokePath(UIGraphicsGetCurrentContext());
        self.image=UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    return self;
}

@end
