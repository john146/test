//
//  Simple_TableViewController.m
//  Simple Table
//
//  Created by John Ahrens on 12/25/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import "Simple_TableViewController.h"
#import <CoreGraphics/CoreGraphics.h>

@implementation Simple_TableViewController

@synthesize listData;

#pragma mark Table View Controller Methods

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
	NSArray	*array	= [[NSArray alloc] initWithObjects: @"Sleepy", @"Sneezy", @"Bashful",
						@"Happy", @"Doc", @"Grumpy", @"Dopey", @"Thorin", @"Dorin",
						@"Nori", @"Ori", @"Balin", @"Dwalin", @"Fili", @"Kili", @"Oin",
					   @"Gloin", @"Bifur", @"Bofur", @"Bombur", nil];
	self.listData	= array;
	[array release];
	[super viewDidLoad];
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
	[listData release];
	
    [super dealloc];
}

#pragma mark -
#pragma mark Table View Data Source Methods

- (NSInteger)tableView: (UITableView *)tableView
 numberOfRowsInSection: (NSInteger)section
{
	return [self.listData count];
}

- (UITableViewCell *)tableView: (UITableView *)tableView
		 cellForRowAtIndexPath: (NSIndexPath *)indexPath
{
	static NSString	*SimpleTableIdentifier	= @"SimpleTableIdentifier";
	
	UITableViewCell	*cell	= [tableView dequeueReusableCellWithIdentifier: SimpleTableIdentifier];
	
	if (cell == nil)
	{
		cell = [[[UITableViewCell alloc] initWithFrame: CGRectZero
									   reuseIdentifier: SimpleTableIdentifier] autorelease];
	}
	
	NSUInteger row	= [indexPath row];
	cell.text		= [listData objectAtIndex: row];
	cell.font		= [UIFont boldSystemFontOfSize: 80];
	
	UIImage	*image	= [UIImage imageNamed: @"star.png"];
	cell.image		= image;
	
	return cell;
}

- (NSInteger)tableView: (UITableView *)tableView
	indentationLevelForRowAtIndexPath: (NSIndexPath *)indexPath
{
	NSUInteger	row	= [indexPath row];
	return row;
}

- (NSIndexPath *)tableView: (UITableView *)tableView
  willSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
	NSUInteger	row	= [indexPath row];
	if (row == 0)
		return nil;
	
	return indexPath;
}

- (void)tableView: (UITableView *)tableView
	didSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
	NSUInteger	row			= [indexPath row];
	NSString	*rowValue	= [listData objectAtIndex: row];
	NSString	*message	= [[NSString alloc] initWithFormat: @"You selected %@", rowValue];
	UIAlertView	*alert		= [[UIAlertView alloc] initWithTitle: @"Row Selected!"
													 message: message
													delegate: nil
										   cancelButtonTitle: @"Yes, I did"
										   otherButtonTitles: nil];
	[alert show];
	
	[message release];
	[alert release];
}

#pragma mark -
#pragma mark Table View Delegate Methods

- (CGFloat)tableView: (UITableView *)tableView
	heightForRowAtIndexPath: (NSIndexPath *)indexPath
{
	return 180;
}

@end
