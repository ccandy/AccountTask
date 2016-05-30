//
//  PersonalNavViewController.m
//  AccountTask
//
//  Created by hua dong on 2016-05-29.
//  Copyright © 2016 andy. All rights reserved.
//

#import "PersonalNavViewController.h"
#import "PersonalViewController.h"
@implementation PersonalNavViewController

-(void) viewDidLoad{
    [super viewDidLoad];
    PersonalViewController *PVC = [[PersonalViewController alloc] init];
    [self pushViewController:PVC animated:NO];
    
}

@end
