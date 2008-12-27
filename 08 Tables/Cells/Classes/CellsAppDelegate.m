//
//  CellsAppDelegate.m
//  Cells
//
//  Created by John Ahrens on 12/26/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import "CellsAppDelegate.h"
#import "CellsViewController.h"

@implementation CellsAppDelegate

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
