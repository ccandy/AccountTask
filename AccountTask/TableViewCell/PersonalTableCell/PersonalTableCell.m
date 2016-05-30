//
//  PersonalTableCell.m
//  AccountTask
//
//  Created by hua dong on 2016-05-29.
//  Copyright © 2016 andy. All rights reserved.
//

#import "PersonalTableCell.h"


@interface PersonalTableCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@end

@implementation PersonalTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) initCell:(id)obj{
    if([obj isKindOfClass:[NSString class]]){
        _titleLabel.text = obj;
    }else{
        _titleLabel.text = @"N/A";
    }
}

@end
