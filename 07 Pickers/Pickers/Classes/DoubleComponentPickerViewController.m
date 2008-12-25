//
//  DoubleComponentPickerViewController.m
//  Pickers
//
//  Created by John Ahrens on 12/23/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import "DoubleComponentPickerViewController.h"

@implementation DoubleComponentPickerViewController

@synthesize doublePicker;
@synthesize fillingTypes;
@synthesize breadTypes;

// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil 
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) 
	{
        // Custom initialization
    }

    return self;
}

- (IBAction)buttonPressed
{
	NSInteger	breadRow		= [doublePicker selectedRowInComponent: kBreadComponent];
	NSInteger	fillingRow		= [doublePicker selectedRowInComponent: kFillingComponent];
	
	NSString	*bread			= [breadTypes objectAtIndex: breadRow];
	NSString	*filling		= [fillingTypes objectAtIndex: fillingRow];
	
	NSString	*message		= [[NSString alloc] initWithFormat: 
								   @"Your %@ on %@ bread will be right up.", filling, bread];
	
	UIAlertView	*alert			= [[UIAlertView alloc] initWithTitle: @"Thank you for your order"
													  message: message
													 delegate: nil
											cancelButtonTitle: @"Great"
											otherButtonTitles: nil];
	[alert show];
	[alert release];
	[message release];
}

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
	NSArray	*breadArray		= [[NSArray alloc] initWithObjects: @"White", @"Whole Wheat",
							   @"Rye", @"Sourdough", @"Seven Grain", nil];
	self.breadTypes			= breadArray;
	[breadArray release];
	
	NSArray	*fillingArray	= [[NSArray alloc] initWithObjects: @"Ham", @"Turkey",
							  @"Peanut Butter", @"Tuna Salad", @"Chicken Salad",
							   @"Roast Beef", @"Vegemite", nil];
	self.fillingTypes		= fillingArray;
	[fillingArray release];
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning 
{
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc 
{
	[doublePicker release];
	[breadTypes release];
	[fillingTypes release];
	
    [super dealloc];
}

#pragma mark -
#pragma mark Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView: (UIPickerView *)pickerView
{
	return 2;
}

- (NSInteger)pickerView: (UIPickerView *)pickerView
numberOfRowsInComponent: (NSInteger)component
{
	if (component == kBreadComponent)
	{
		return [self.breadTypes count];
	}
	
	return [self.fillingTypes count];
}

#pragma mark Picker Delegate Methods

- (NSString *)pickerView: (UIPickerView *)pickerView
			 titleForRow: (NSInteger)row
			forComponent: (NSInteger)component
{
	if (component == kBreadComponent)
	{
		return [self.breadTypes objectAtIndex: row];
	}
	
	return [self.fillingTypes objectAtIndex: row];
}

@end
