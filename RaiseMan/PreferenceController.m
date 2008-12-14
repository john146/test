//
//  PreferenceController.m
//  RaiseMan
//
//  Created by John Ahrens on 12/6/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import "PreferenceController.h"

NSString * const BNRTableBgColorKey	= @"TableBackgroundColor";
NSString * const BNREmptyDocKey		= @"EmptyDocumentFlag";

@implementation PreferenceController

- (id)init
{
	if (![super initWithWindowNibName: @"Preferences"])
	{
		return nil;
	}
	
	return self;
}

- (NSColor *)tableBGColor
{
	NSUserDefaults	* defaults		= [NSUserDefaults standardUserDefaults];
	NSData			* colorAsData	= [defaults objectForKey: BNRTableBgColorKey];
	return [NSKeyedUnarchiver unarchiveObjectWithData: colorAsData];
}

- (BOOL)emptyDoc
{
	NSUserDefaults	* defaults		= [NSUserDefaults standardUserDefaults];
	return [defaults boolForKey: BNREmptyDocKey];
}

- (void)WindowDidLoad
{
	[colorWell setColor: [self tableBGColor]];
	[checkBox setState: [self emptyDoc]];
	
	NSLog(@"Nib file is loaded");
}

- (IBAction)changeBackgroundColor: (id)sender
{
	NSColor			* color			= [colorWell color];
	NSData			* colorAsData	= [NSKeyedArchiver archivedDataWithRootObject: color];
	NSUserDefaults	* defaults		= [NSUserDefaults standardUserDefaults];
	[defaults setObject: colorAsData
				 forKey: BNRTableBgColorKey];
	
	NSLog(@"Color changed: %@", color);
}

- (IBAction)changeNewEmptyDoc: (id)sender
{
	int				state		= [checkBox state];
	NSUserDefaults	* defaults	= [NSUserDefaults standardUserDefaults];
	[defaults setBool: state
			   forKey: BNREmptyDocKey];
	
	NSLog(@"Checkbox changed %d", state);
}

- (IBAction)resetPreferences: (id)sender
{
	NSLog(@"resetPreferences selected");
	
	// Seems like a hack, but it seems to be the best way to start
	NSColor	* color			= [NSColor yellowColor];
	NSData	* colorAsData	= [NSKeyedArchiver archivedDataWithRootObject: color];
	BOOL	emptyDoc		= YES;
	
	NSUserDefaults	* defaults	= [NSUserDefaults standardUserDefaults];
	[defaults setObject: colorAsData
				 forKey: BNRTableBgColorKey];
	[defaults setBool: emptyDoc
			   forKey: BNREmptyDocKey];
	
	// Now reset the preferences box
	[colorWell setColor: [self tableBGColor]];
	[checkBox setState: [self emptyDoc]];
}

@end
