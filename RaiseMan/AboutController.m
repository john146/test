//
//  AboutController.m
//  RaiseMan
//
//  Created by John Ahrens on 12/7/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import "AboutController.h"


@implementation AboutController

- (id)init
{
	if (![super initWithWindowNibName: @"About"])
	{
		NSLog(@"About window failed to initWithWindowNibName");
		return nil;
	}
	
	NSLog(@"About window initialized");
	return self;
}

- (void)windowDidLoad
{
	NSLog(@"Nib file is loaded");
}

@end
