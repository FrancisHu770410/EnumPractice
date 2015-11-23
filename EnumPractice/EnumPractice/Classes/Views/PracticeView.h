//
//  PracticeView.h
//  EnumPractice
//
//  Created by 胡珀菖 on 2015/11/23.
//  Copyright © 2015年 胡珀菖. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, DotType) {
    DotDefaultType = 0,
    DotBlueType,
    DotGreenType,
};

typedef NS_ENUM(NSUInteger, PracticeType) {
    PracticeDefaultType = 1 << 0,
    PracticeCircleType = 1 << 1,
    PracticeFillDotType = 1 << 2,
    PracticeRandomColorType = 1 << 3,
};

@interface PracticeView : UIView

- (instancetype) initWithType:(PracticeType)practiceType;

- (void) setCurrentDotType:(DotType)dotType;

@end
