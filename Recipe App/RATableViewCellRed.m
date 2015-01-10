//
//  RATableViewCellRed.m
//  Recipe App
//
//  Created by Duc Ho on 1/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RATableViewCellRed.h"

@implementation RATableViewCellRed

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    self.backgroundColor = [UIColor redColor];

    // Configure the view for the selected state
}

@end
