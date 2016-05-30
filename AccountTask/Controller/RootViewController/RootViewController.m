//
//  RootViewController.m
//  AccountTask
//
//  Created by hua dong on 2016-05-29.
//  Copyright © 2016 andy. All rights reserved.
//

#import "RootViewController.h"
#import "PersonalNavViewController.h"
@interface RootViewController ()
@property (strong, nonatomic) NSMutableArray *vcList;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initViewControllers];
    
    
}

#pragma mark setupView

-(void) initViewControllers{
    _vcList                         = [NSMutableArray array];
    PersonalNavViewController *PVC  = [[PersonalNavViewController alloc] init];
    [_vcList addObject:PVC];
    self.viewControllers            = _vcList;
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
