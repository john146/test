//
//  DataPickerViewController.m
//  Pickers
//
//  Created by John Ahrens on 12/23/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import "DatePickerViewController.h"

@implementation DatePickerViewController

@synthesize datePicker;

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
	NSDate		*selected	= [datePicker date];
	NSString	*message	= [[NSString alloc] initWithFormat: @"The date and time you selected is: %@", selected];
	UIAlertView	*alert		= [[UIAlertView alloc] initWithTitle: @"Date and Time Selected"
													 message: message
													delegate: nil
										   cancelButtonTitle: @"Yes, I did"
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
	NSDate	*now	= [[NSDate alloc] init];
	[datePicker setDate: now animated: YES];
	[now release];
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
	[datePicker release];
    [super dealloc];
}


@end
