//
//  PracticeController.m
//  EnumPractice
//
//  Created by 胡珀菖 on 2015/11/23.
//  Copyright © 2015年 胡珀菖. All rights reserved.
//

#import "PracticeController.h"
#import "PracticeView.h"

@interface PracticeController ()

@property (nonatomic, strong) PracticeView *practiceView;

@end

@implementation PracticeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.practiceView = [[PracticeView alloc] initWithType:PracticeRandomColorType | PracticeFillDotType | PracticeCircleType];
    self.view = self.practiceView;
    
    [self.practiceView setCurrentDotType:DotBlueType];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
