//
//  PersonalViewController.m
//  AccountTask
//
//  Created by hua dong on 2016-05-29.
//  Copyright © 2016 andy. All rights reserved.
//

#import "PersonalViewController.h"
#import "PersonalTableCell.h"
#import "SpendingViewController.h"
@interface PersonalViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation PersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self  setupView];
    [self  regNibs];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark setupView

-(void) setupView{
    self.title                 = @"Setting";
    
    _tableView.separatorStyle  = UITableViewCellEditingStyleNone;
    _tableView.backgroundView  = nil;
    _tableView.backgroundColor = [UIColor accGray];
    
}

-(void) regNibs{
    NSArray *array = @[@"PersonalTableCell"];
    [_tableView regNibs:array];
}


#pragma mark UITableViewDataSource
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PersonalTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonalTableCell"];
    [cell initCell:@"Spending Plan"];
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section{
    return 20;
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    UITableViewHeaderFooterView *v   = (UITableViewHeaderFooterView *)view;
    v.backgroundView.backgroundColor = [UIColor accGray];
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

#pragma mark UITableViewDelegate

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    SpendingViewController* SVC      = [[SpendingViewController alloc] init];
    [self.navigationController pushViewController:SVC animated:YES];
}

@end
