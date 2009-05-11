//
//  NavAppDelegate.m
//  Nav
//
//  Created by John Ahrens on 5/11/09.
//  Copyright John Ahrens, LLC 2009. All rights reserved.
//

#import "NavAppDelegate.h"

@implementation NavAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
