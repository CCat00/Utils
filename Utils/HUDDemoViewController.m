//
//  HUDDemoViewController.m
//  Utils
//
//  Created by 韩威 on 16/4/12.
//  Copyright © 2016年 韩威. All rights reserved.
//

#import "HUDDemoViewController.h"
#import "NSObject+HUD.h"

@interface HUDDemoViewController ()

@end

@implementation HUDDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (IBAction)showToast:(id)sender {
    [NSObject showToastWithString:@"这是一个提示语"];
}

- (IBAction)showLoading:(id)sender {
    [NSObject showLoadingWithString:@"加载中..."];
    [self performSelector:@selector(dismissLoading) withObject:nil afterDelay:2];
}

- (void)dismissLoading {
    [NSObject hiddenLoading];
}

@end
