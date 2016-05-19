//
//  secondVC.m
//  testPresentViewController
//
//  Created by 王迎博 on 16/5/19.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "secondVC.h"

@interface secondVC ()

@end

@implementation secondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //手势
    [self gesture];
    
    //毛玻璃
    UIBlurEffect *blurEffect=[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *visualEffectView=[[UIVisualEffectView alloc]initWithEffect:blurEffect];
    [visualEffectView setFrame:self.view.bounds];
    [self.view addSubview:visualEffectView];

}

/**
 *  手势
 */
- (void)gesture{
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(didTapOnBackground)]];
    
    UISwipeGestureRecognizer *swipeGesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(didTapOnBackground)];
    [swipeGesture setDirection:UISwipeGestureRecognizerDirectionDown];
    [self.view addGestureRecognizer:swipeGesture];
}

/**
 *  手势点击方法
 */
- (void)didTapOnBackground
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.0*NSEC_PER_SEC)),dispatch_get_main_queue(), ^{
        [self dismissViewControllerAnimated:YES completion:nil];
    });
}

@end
