//
//  CellsViewController.m
//  Cells
//
//  Created by John Ahrens on 12/26/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import "CellsViewController.h"
#import "CustomCell.h"

@implementation CellsViewController

@synthesize computers;

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
	
	NSDictionary *row1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"MacBook", @"Name", @"White", @"Color", nil];
	NSDictionary *row2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"MacBook Pro", @"Name", @"Silver", @"Color", nil];
	NSDictionary *row3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"iMac", @"Name", @"White", @"Color", nil];
	
	NSArray *array = [[NSArray alloc] initWithObjects:row1, row2, row3, nil];
	self.computers = array;
	
	[row1 release];
	[row2 release];
	[row3 release];
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
	[computers release];
	
    [super dealloc];
}

#pragma mark -
#pragma mark Table Data Source Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	NSLog(@"Returning %d", [self.computers count]);
	return [self.computers count];
}

- (UITableViewCell *)tableView: (UITableView *)tableView
		 cellForRowAtIndexPath: (NSIndexPath *)indexPath
{
	static NSString *CustomCellIdentifier = @"CustomCellIdentifier ";
	
	CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier: CustomCellIdentifier];
	if (cell == nil)
	{
		NSArray	*nib	= [[NSBundle mainBundle] loadNibNamed: @"CustomCell"
													 owner: self
												   options: nil];
		cell			= [nib objectAtIndex: 1];
	}
	
	NSUInteger		row			= [indexPath row];
	NSDictionary	*rowData	= [self.computers objectAtIndex: row];
	cell.colorLabel.text	= [rowData objectForKey: @"Color"];
	cell.nameLabel.text		= [rowData objectForKey: @"Name"];
	
	return cell;
}

- (CGFloat)tableView: (UITableView *)tableView
	heightForRowAtIndexPath: (NSIndexPath *)indexPath
{
	return 66;
}

@end
