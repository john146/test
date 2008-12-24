//
//  SimgleComponentPickerViewController.m
//  Pickers
//
//  Created by John Ahrens on 12/23/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import "SingleComponentPickerViewController.h"

@implementation SingleComponentPickerViewController

@synthesize singlePicker;
@synthesize pickerData;

// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil 
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) 
	{
        // Custom initialization
    }
    
	return self;
}

- (IBAction)buttonPressed: (id)sender
{
	NSInteger	row		= [singlePicker selectedRowInComponent: 0];
	NSString	*selected	= [pickerData objectAtIndex: row];
	NSString	*title		= [[NSString alloc] initWithFormat: @"You selected %@!", selected];
	UIAlertView	*alert		= [[UIAlertView alloc] initWithTitle: title
													 message: @"Thank you for choosing"
													delegate: nil
										   cancelButtonTitle: @"You're Welcome"
										   otherButtonTitles: nil];
	[alert show];
	[alert release];
	[title release];
}

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
	NSArray	*array	= [[NSArray alloc] initWithObjects: @"Luke",
					   @"Leia", @"Han", @"Chewbacca", @"Artoo", @"Threepio", @"Lando", nil];
	self.pickerData	= array;
	[array release];
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
	[singlePicker release];
	[pickerData	release];
	
    [super dealloc];
}

#pragma mark -
#pragma mark  Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView: (UIPickerView *)pickerView
{
	return 1;
}

- (NSInteger)pickerView: (UIPickerView *)pickerView
numberOfRowsInComponent: (NSInteger)component 
{
	return [pickerData count];
}

#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView
			 titleForRow: (NSInteger)row
			forComponent: (NSInteger)component
{
	return [pickerData objectAtIndex: row];
}

@end
