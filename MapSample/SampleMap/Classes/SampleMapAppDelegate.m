//
//  SampleMapAppDelegate.m
//  SampleMap
//
//  Created by John Ahrens on 2/28/09.
//  Copyright John Ahrens, LLC 2009. All rights reserved.
//

#import "SampleMapAppDelegate.h"
#import "SampleMapViewController.h"

@implementation SampleMapAppDelegate

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
