//
//  PracticeView.m
//  EnumPractice
//
//  Created by 胡珀菖 on 2015/11/23.
//  Copyright © 2015年 胡珀菖. All rights reserved.
//

#import "PracticeView.h"

@interface PracticeView ()

@property (nonatomic, strong) CAShapeLayer *circleLayer;

@end

@implementation PracticeView

- (instancetype) initWithType:(PracticeType)practiceType {
    self = [super initWithFrame:[UIScreen mainScreen].bounds];
    if (self) {
        if (practiceType & PracticeDefaultType) {
            self.backgroundColor = [UIColor whiteColor];
        }
        
        if (practiceType & PracticeCircleType) {
            self.circleLayer = [CAShapeLayer layer];
            self.circleLayer.strokeColor = [UIColor blackColor].CGColor;
            self.circleLayer.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame)) radius:100 startAngle:0 endAngle:M_PI * 2 clockwise:0].CGPath;
            self.circleLayer.fillColor = [UIColor clearColor].CGColor;
            [self.layer addSublayer:self.circleLayer];
        }
        
        if (practiceType & PracticeFillDotType) {
            int dotMaxY = CGRectGetHeight(self.frame) / 5;
            int dotMaxX = CGRectGetWidth(self.frame) / 5;
            for (int i = 0; i < dotMaxY; i++) {
                for (int j = 0; j < dotMaxX; j++) {
                    UIView *tempDotView = [[UIView alloc] initWithFrame:CGRectMake(j * 5 + 2.5, i * 5, 5, 5)];
                    tempDotView.layer.cornerRadius = 2.5;
                    tempDotView.backgroundColor = [UIColor grayColor];
                    [self addSubview:tempDotView];
                }
            }
        }
        
        if (practiceType & PracticeRandomColorType) {
            float redValue = arc4random() % 255;
            float greenValue = arc4random() % 255;
            float blueValue = arc4random() % 255;
            self.backgroundColor = [UIColor colorWithRed:(redValue / 255.0) green:(greenValue / 255.0) blue:(blueValue / 255.0) alpha:1.0];
        }
    }
    return self;
}

- (void) setCurrentDotType:(DotType)dotType {
    for (UIView *subView in self.subviews) {
        switch (dotType) {
            case DotDefaultType:
                subView.backgroundColor = [UIColor grayColor];
                break;
                
            case DotBlueType:
                subView.backgroundColor = [UIColor blueColor];
                break;
                
            case DotGreenType:
                subView.backgroundColor = [UIColor greenColor];
                break;
        }
    }
}

@end
