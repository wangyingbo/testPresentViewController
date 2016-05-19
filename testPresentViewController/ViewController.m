//
//  ViewController.m
//  testPresentViewController
//
//  Created by 王迎博 on 16/5/19.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "ViewController.h"
#import "firstVC.h"
#import "secondVC.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)presentTovc:(id)sender
{
    firstVC *first = [[firstVC alloc]init];
    first.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:first animated:YES completion:nil];
}



- (IBAction)presentToVCAgain:(id)sender
{
    secondVC *second = [[secondVC alloc]init];
    second.modalPresentationStyle = UIModalPresentationOverFullScreen;
    //modalTransitionStyle不可与vc.view.backgroundColor = [UIColor blackColor]同时使用
    [second setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:second animated:YES completion:nil];
}
@end
