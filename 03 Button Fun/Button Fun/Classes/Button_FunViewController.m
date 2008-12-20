//
//  Button_FunViewController.m
//  Button Fun
//
//  Created by John Ahrens on 12/19/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import "Button_FunViewController.h"

@implementation Button_FunViewController

@synthesize statusText;

- (IBAction)buttonPressed: (id)sender
{
	NSString	*title		= [sender titleForState: UIControlStateNormal];
	NSString	*newText	= [[NSString alloc] initWithFormat: @"%@ button pressed.", title];
	statusText.text			= newText;
	
	[newText release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation)interfaceOrientation
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
	[statusText release];
    [super dealloc];
}

@end
