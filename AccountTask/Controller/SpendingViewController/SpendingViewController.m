//
//  SpendingViewController.m
//  AccountTask
//
//  Created by hua dong on 2016-05-29.
//  Copyright © 2016 andy. All rights reserved.
//

#import "SpendingViewController.h"

@interface SpendingViewController ()

@end

@implementation SpendingViewController


#pragma mark - setupView

-(void) setupView{
    self.title      = @"Spending Plan";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self  setupView];
    // Do any additional setup after loading the view from its nib.
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
