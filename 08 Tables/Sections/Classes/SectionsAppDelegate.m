//
//  SectionsAppDelegate.m
//  Sections
//
//  Created by John Ahrens on 1/4/09.
//  Copyright John Ahrens, LLC 2009. All rights reserved.
//

#import "SectionsAppDelegate.h"
#import "SectionsViewController.h"

@implementation SectionsAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
