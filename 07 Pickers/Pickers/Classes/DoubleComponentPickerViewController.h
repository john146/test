//
//  DoubleComponentPickerViewController.h
//  Pickers
//
//  Created by John Ahrens on 12/23/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kFillingComponent	0
#define kBreadComponent		1

@interface DoubleComponentPickerViewController : UIViewController 
{
	IBOutlet UIPickerView	*doublePicker;
	NSArray					*fillingTypes;
	NSArray					*breadTypes;
}

@property (nonatomic, retain) UIPickerView	*doublePicker;
@property (nonatomic, retain) NSArray		*fillingTypes;
@property (nonatomic, retain) NSArray		*breadTypes;

- (IBAction)buttonPressed;

@end
