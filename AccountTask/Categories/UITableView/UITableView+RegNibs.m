//
//  UITableView+RegNibs.m
//  AccountTask
//
//  Created by hua dong on 2016-05-29.
//  Copyright © 2016 andy. All rights reserved.
//

#import "UITableView+RegNibs.h"

@implementation UITableView (RegNibs)

-(void) regNibs:(NSArray *)array{
    if(array == nil || array.count == 0){
        return;
    }
    for(int n = 0; n < array.count; n++){
        NSString *nibName = [array objectAtIndex:n];
        [self registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellReuseIdentifier:nibName];
    }
    
}

@end
