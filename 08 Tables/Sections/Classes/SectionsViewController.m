//
//  SectionsViewController.m
//  Sections
//
//  Created by John Ahrens on 1/4/09.
//  Copyright John Ahrens, LLC 2009. All rights reserved.
//

#import "SectionsViewController.h"
#import "NSDictionary-MutableDeepCopy.h"

@implementation SectionsViewController

@synthesize names;
@synthesize keys;
@synthesize table;
@synthesize search;
@synthesize allNames

#pragma mark - 
#pragma mark Custom Methods

- (void)resetSearch
{
	[self setNames: [[self allNames] deepMutableCopy]];
	NSMutableArray	*keyArray	= [[NSMutableArray alloc] init];
	[keyArray addObjectsFromArray: [[[self allNames] allKeys]] 
		 sortedArrayUsingSelector: @selector(compare:)];
	[self setKeys: keyArray];
	[keyArray release];
}

- (void)handleSearchForTerm: (NSString *)searchTerm
{
	NSMutableArray *sectionsToRemove = [[NSMutableArray alloc] init];
	[self resetSearch];
	
	for (NSString *key in [self keys])
	{
		NSMutableArray *array = [names valueForKey: key];
		NSMutableArray *toRemove = [[NSMutableArray alloc] init];
		for (NSString *name in array)
		{
			if ([name rangeOfString: searchTerm
							options:NSCaseInsensitiveSearch].location == NSNotFound)
			{
				[toRemove addObject: name];
			}
		}
		
		if ([array count] == [toRemove count])
		{
			[sectionsToRemove addObject: key];
		}
		
		[array removeObjectsInArray: toRemove];
		[toRemove release];
	}
	
	[self.keys removeObjectsInArray: sectionsToRemove];
	[sectionsToRemove release];
	[table reloadData];
}

#pragma mark -
#pragma mark UIViewController Methods

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
	NSString	*path	= [[NSBundle mainBundle] pathForResource: @"sortednames"
													 ofType: @"plist"];
	NSDictionary	*dict	= [[NSDictionary alloc] initWithContentsOfFile: path];
	[self setAllNames: dict];
	[dict release];
	
	[self resetSearch];
	[search setAutocapitalizationType: UITextAutocapitalizationTypeNone];
	[search setAutocorrectionType: UITextAutocorrectionTypeNo];
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
	[table release];
	[search release];
	[allNames release];
	[names release];
	[keys release];
	
    [super dealloc];
}

#pragma mark -
#pragma mark Table View Data Source Methods

- (NSInteger)numberOfSectionsInTableView: (UITableView *)tableView
{
	return ([keys count] > 0 ? [keys count] : 1);
}

- (NSInteger)tableView: (UITableView *)tableView
 numberOfRowsInSection: (NSInteger)section
{
	if ([keys count] == 0)
	{
		return 0;
	}
	
	NSString	*key			= [keys objectAtIndex: section];
	NSArray		*nameSection	= [names objectForKey: key];
	
	return [nameSection count];
}

- (UITableViewCell *)tableView: (UITableView *)tableView
		 cellForRowAtIndexPath: (NSIndexPath *)indexPath
{
	NSUInteger	section	= [indexPath section];
	NSUInteger	row		= [indexPath row];
	
	NSString	*key	= [keys objectAtIndex: section];
	NSArray		*nameSection	= [names objectForKey: key];
	
	static NSString *SectionsTableIdentifier = @"SectionsTableIdentifier";
	
	UITableViewCell	*cell	= [tableView dequeueReusableCellWithIdentifier: SectionsTableIdentifier];
	if (cell == nil)
	{
		cell	= [[[UITableViewCell alloc] initWithFrame: CGRectZero
									   reuseIdentifier: SectionsTableIdentifier] autorelease];
	}
	
	[cell setText: [nameSection objectAtIndex: row]];
	return cell;
}

- (NSString *)tableView: (UITableView *)tableView
titleForHeaderInSection: (NSInteger)section
{
	if ([keys count] == 0)
	{
		return @"";
	}
	
	NSString	*key	= [keys objectAtIndex: section];
	return key;
}

- (NSArray *)sectionIndexTitlesForTableView: (UITableView *)tableView
{
	return keys;
}

#pragma mark -
#pragma mark Table View Delegate Methods

- (NSIndexPath *)tableView: (UITableView *)tableView
  willSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
	[search resignFirstResponder];
	return indexPath;
}

#pragma mark -
#pragma mark Search Bar Delegate Methods

- (void)searchBarButtonClicked: (UISearchBar *)searchBar
{
	NSString *searchTerm = [searchBar text];
	[self handleSearchForTerm: searchTerm];
}

- (void)searchBar: (UISearchBar *)searchBar
	textDidChange: (NSString *)searchTerm
{
	if ([searchTerm length] == 0)
	{
		[self resetSearch];
		[table reloadData];
		return;
	}
	
	[self handleSearchForTerm: searchTerm];
}

- (void)searchBarCancelButtonClicked: (UISearchBar *)searchBar
{
	[search setText: @""];
	[self resetSearch];
	[table reloadData];
	[searchBar resignFirstResponder];
}

@end
