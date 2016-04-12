//
//  FrameDemoViewController.m
//  Utils
//
//  Created by 韩威 on 16/4/12.
//  Copyright © 2016年 韩威. All rights reserved.
//

#import "FrameDemoViewController.h"
#import "UIView+Frame.h"

@interface FrameDemoViewController ()

@end

@implementation FrameDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [UIView new];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView = [UIView new];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    UIView *yellowView = [UIView new];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellowView];
    
    redView.left_h = 10;
    redView.top_h = 80;
    redView.size_h = CGSizeMake(100, 100);
    
    blueView.left_h = redView.right_h + 10;
    blueView.top_h = redView.top_h;
    blueView.size_h = redView.size_h;
    
    yellowView.size_h = redView.size_h;
    yellowView.top_h = redView.bottom_h + 20;
    yellowView.centerX_h = redView.centerX_h;
    yellowView.width_h = 210;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
