//
//  AutosizeViewController.m
//  Autosize
//
//  Created by John Ahrens on 12/21/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import "AutosizeViewController.h"

@implementation AutosizeViewController

@synthesize	button1;
@synthesize	button2;
@synthesize	button3;
@synthesize button4;
@synthesize	button5;
@synthesize	button6;

- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation: (UIInterfaceOrientation)fromInterfaceOrientation
													   duration: (NSTimeInterval)duration
{
	UIInterfaceOrientation	toOrientation	= self.interfaceOrientation;
	[UIView beginAnimations:@"move buttons"
					context:nil];
	
	if (toOrientation == UIInterfaceOrientationPortrait ||
		toOrientation == UIInterfaceOrientationPortraitUpsideDown)
	{
		button1.frame	= CGRectMake(20, 20, 125, 125);
		button2.frame	= CGRectMake(175, 20, 125, 125);
		button3.frame	= CGRectMake(20, 168, 125, 125);
		button4.frame	= CGRectMake(175, 168, 125, 125);
		button5.frame	= CGRectMake(20, 315, 125, 125);
		button6.frame	= CGRectMake(175, 315, 125, 125);
	}
	else
	{
		button1.frame	= CGRectMake(20, 20, 125, 125);
		button2.frame	= CGRectMake(20, 155, 125, 125);
		button3.frame	= CGRectMake(177, 20, 125, 125);
		button4.frame	= CGRectMake(177, 155, 125, 125);
		button5.frame	= CGRectMake(328, 20, 125, 125);
		button6.frame	= CGRectMake(328, 155, 125, 125);
	}
	
	[UIView commitAnimations];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait ||
			interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
			interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc 
{
	[button1 release];
	[button2 release];
	[button3 release];
	[button4 release];
	[button5 release];
	[button6 release];
	
    [super dealloc];
}

@end
