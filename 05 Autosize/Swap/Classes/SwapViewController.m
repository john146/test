//
//  SwapViewController.m
//  Swap
//
//  Created by John Ahrens on 12/21/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import "SwapViewController.h"

@implementation SwapViewController

@synthesize landscape;
@synthesize portrait;
@synthesize landscapeFooButton;
@synthesize portraitFooButton;
@synthesize landscapeBarButton;
@synthesize portraitBarButton;

- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation: (UIInterfaceOrientation)toInterfaceOrientation
													duration: (NSTimeInterval)duration
{
	if (toInterfaceOrientation == UIInterfaceOrientationPortrait)
	{
		self.view			= self.portrait;
		self.view.transform	= CGAffineTransformIdentity;
		self.view.transform	= CGAffineTransformMakeRotation(degreesToRadian(0));
		self.view.bounds	= CGRectMake(0.0, 0.0, 300.0, 480.0);
	}
	else if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft)
	{
		self.view			= self.landscape;
		self.view.transform	= CGAffineTransformIdentity;
		self.view.transform	= CGAffineTransformMakeRotation(degreesToRadian(-90));
		self.view.bounds	= CGRectMake(0.0, 0.0, 460.0, 320.0);
	}
	else if (toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)
	{
		self.view			= self.portrait;
		self.view.transform	= CGAffineTransformIdentity;
		self.view.transform	= CGAffineTransformMakeRotation(degreesToRadian(180));
		self.view.bounds	= CGRectMake(0.0, 0.0, 300.0, 480.0);
	}
	else if (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight)
	{
		self.view			= self.landscape;
		self.view.transform	= CGAffineTransformIdentity;
		self.view.transform	= CGAffineTransformMakeRotation(degreesToRadian(90));
		self.view.bounds	= CGRectMake(0.0, 0.0, 460.0, 320.0);
	}
}

- (IBAction)buttonPressed: (id)sender
{
	if (sender	== portraitFooButton || sender == landscapeFooButton)
	{
		portraitFooButton.hidden	= YES;
		landscapeFooButton.hidden	= YES;
	}
	else
	{
		portraitBarButton.hidden	= YES;
		landscapeBarButton.hidden	= YES;
	}
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    // Return YES for supported orientations
    // return (interfaceOrientation == UIInterfaceOrientationPortrait);
	
	return YES;
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


/*
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc 
{
	[landscape release];
	[portrait release];
	[portraitFooButton release];
	[landscapeFooButton release];
	[portraitBarButton release];
	[landscapeBarButton release];
	
    [super dealloc];
}

@end
