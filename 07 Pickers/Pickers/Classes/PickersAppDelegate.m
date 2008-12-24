//
//  PickersAppDelegate.m
//  Pickers
//
//  Created by John Ahrens on 12/23/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import "PickersAppDelegate.h"

@implementation PickersAppDelegate

@synthesize window;
@synthesize rootController;

- (void)applicationDidFinishLaunching:(UIApplication *)application 
{    
    // Override point for customization after application launch
	[window addSubview: rootController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc 
{
	[rootController release];
    [window release];
    [super dealloc];
}


@end
