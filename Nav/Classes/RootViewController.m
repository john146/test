//
//  RootViewController.m
//  Nav
//
//  Created by John Ahrens on 5/11/09.
//  Copyright 2009 John Ahrens, LLC. All rights reserved.
//

#import "RootViewController.h"
#import "SecondLevelViewController.h"
#import "NavAppDelegate.h"
#import "DisclosureButtonController.h"

@implementation RootViewController

@synthesize controllers;

- (id)initWithStyle: (UITableViewStyle)style 
{
	if (self = [super initWithStyle: style])
	{
		
	}
	
	return self;
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

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
	self.title				= @"Root level";
	NSMutableArray *array	= [[NSMutableArray alloc] init];
	self.controllers		= array;
	
	// Disclosure Button
	DisclosureButtonController *disclosureButtonController =
			[[DisclosureButtonController alloc] initWithStyle: UITableViewStylePlain];
	disclosureButtonController.title	= @"Disclosure Buttons";
	disclosureButtonController.rowImage	= [UIImage imageNamed: @"disclosureButtonControllerIcon.png"];
	[array addObject: disclosureButtonController];
	
	[disclosureButtonController release];
	[array release];
	
    [super viewDidLoad];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc
{
	[controllers release];
	
    [super dealloc];
}

#pragma mark -
#pragma mark Table Data Source Methods

- (NSInteger)tableView: (UITableView *)tableView
 numberOfRowsInSection: (NSInteger)section
{
	return [self.controllers count];
}

- (UITableViewCell *)tableView: (UITableView *)tableView
		 cellForRowAtIndexPath: (NSIndexPath *)indexPath
{
	static NSString *TopLevelCellIdentifier = @"TopLevelCellIdentifier";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TopLevelCellIdentifier];
	if (cell == nil) 
	{
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero 
									   reuseIdentifier:TopLevelCellIdentifier] autorelease];
	}
	
	// Configure the cell
	NSUInteger row	= [indexPath row];
	SecondLevelViewController *controller	= [controllers objectAtIndex: row];
	cell.text		= controller.title;
	cell.image		= controller.rowImage;
	
	return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods

- (UITableViewCellAccessoryType)tableView: (UITableView *)tableView
		 accessoryTypeForRowWithIndexPath: (NSIndexPath *)indexPath
{
	return UITableViewCellAccessoryDisclosureIndicator;
}

- (void)tableView: (UITableView *)tableView
didSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
	NSUInteger row	= [indexPath row];
	SecondLevelViewController *nextController = [self.controllers objectAtIndex: row];
	
	NavAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	[delegate.navController pushViewController: nextController
									  animated: YES];
}

@end
