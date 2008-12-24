//
//  SimgleComponentPickerViewController.h
//  Pickers
//
//  Created by John Ahrens on 12/23/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SingleComponentPickerViewController : UIViewController 
		<UIPickerViewDelegate, UIPickerViewDataSource>
{
	IBOutlet UIPickerView	*singlePicker;
	NSArray					*pickerData;
}

@property (nonatomic, retain) UIPickerView	*singlePicker;
@property (nonatomic, retain) NSArray		*pickerData;

- (IBAction)buttonPressed: (id)sender;

@end
