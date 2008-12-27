//
//  CustomCell.m
//  Cells
//
//  Created by John Ahrens on 12/26/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import "CustomCell.h"


@implementation CustomCell

@synthesize nameLabel;
@synthesize colorLabel;

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier 
{
    if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) 
	{
        // Initialization code
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated 
{

    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)dealloc 
{
    [super dealloc];
}


@end
