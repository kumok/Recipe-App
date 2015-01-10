//
//  RATableViewCellGreen.m
//  Recipe App
//
//  Created by Duc Ho on 1/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RATableViewCellGreen.h"

@implementation RATableViewCellGreen

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    self.backgroundColor = [UIColor blueColor];
    
    // Configure the view for the selected state
}

@end
