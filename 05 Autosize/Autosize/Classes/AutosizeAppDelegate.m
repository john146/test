//
//  AutosizeAppDelegate.m
//  Autosize
//
//  Created by John Ahrens on 12/21/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import "AutosizeAppDelegate.h"
#import "AutosizeViewController.h"

@implementation AutosizeAppDelegate

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
