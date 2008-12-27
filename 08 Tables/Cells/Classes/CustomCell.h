//
//  CustomCell.h
//  Cells
//
//  Created by John Ahrens on 12/26/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kTableViewRowHeight	66

@interface CustomCell : UITableViewCell 
{
	IBOutlet UILabel	*nameLabel;
	IBOutlet UILabel	*colorLabel;
}

@property (nonatomic, retain)UILabel *nameLabel;
@property (nonatomic, retain)UILabel *colorLabel;

@end
