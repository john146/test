//
//  DependentComponentPickerViewController.h
//  Pickers
//
//  Created by John Ahrens on 12/23/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kStateComponent 0
#define kZipComponent 1

@interface DependentComponentPickerViewController : UIViewController 
			<UIPickerViewDelegate, UIPickerViewDataSource>
{
	IBOutlet UIPickerView	*picker;
	NSDictionary			*stateZips;
	NSArray					*states;
	NSArray					*zips;
}

@property (nonatomic, retain) UIPickerView	*picker;
@property (nonatomic, retain) NSDictionary	*stateZips;
@property (nonatomic, retain) NSArray		*states;
@property (nonatomic, retain) NSArray		*zips;

- (IBAction)buttonPressed;

@end
