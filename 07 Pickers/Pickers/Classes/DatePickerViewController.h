//
//  DataPickerViewController.h
//  Pickers
//
//  Created by John Ahrens on 12/23/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DatePickerViewController : UIViewController 
{
	IBOutlet UIDatePicker	*datePicker;
}

@property (nonatomic, retain)UIDatePicker	*datePicker;

- (IBAction)buttonPressed: (id)sender;

@end
