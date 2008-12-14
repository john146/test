//
//  AppController.m
//  RaiseMan
//
//  Created by John Ahrens on 12/6/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import "AppController.h"
#import "PreferenceController.h"
#import "AboutController.h"

@implementation AppController

+ (void)initialize
{
	// Create a dictionary
	NSMutableDictionary	*defaultValues	= [NSMutableDictionary dictionary];
	
	// Archive the color object
	NSData				*colorAsData	= [NSKeyedArchiver archivedDataWithRootObject: [NSColor yellowColor]];
	
	// Put defaults in dictionary
	[defaultValues setObject: colorAsData
					  forKey: BNRTableBgColorKey];
	[defaultValues setObject: [NSNumber numberWithBool:YES]
					  forKey: BNREmptyDocKey];
	
	// Register the dictionary of defaults
	[[NSUserDefaults standardUserDefaults] registerDefaults: defaultValues];
	
	NSLog(@"registered defaults: %@", defaultValues);
}

- (IBAction)showPreferencePanel: (id)sender
{
	// Is preferenceController nil?
	if (!preferenceController)
	{
		preferenceController	= [[PreferenceController alloc] init];
	}
	
	NSLog(@"Showing %@", preferenceController);
	[preferenceController showWindow: self];
}

- (IBAction)showAboutPanel: (id)sender
{
	// Is aboutController nil?
	if (!aboutController)
	{
		aboutController	= [[AboutController alloc] init];
	}
	
	NSLog(@"Showing %@", aboutController);
	[aboutController showWindow: self];
}

- (BOOL)applicationShouldOpenUntitledFile: (NSApplication *)sender
{
	NSLog(@"applicationShouldOpenUntitledFile:");
	
	return [[NSUserDefaults standardUserDefaults] boolForKey: BNREmptyDocKey];
}

@end
