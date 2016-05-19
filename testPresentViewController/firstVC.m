//
//  firstVC.m
//  testPresentViewController
//
//  Created by 王迎博 on 16/5/19.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "firstVC.h"

@interface firstVC ()

@end

@implementation firstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    self.view.alpha = 0.7;
    
    //手势
    [self gesture];
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
