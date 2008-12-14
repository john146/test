//
//  AppController.h
//  RaiseMan
//
//  Created by John Ahrens on 12/6/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class PreferenceController;
@class AboutController;

@interface AppController : NSObject 
{
	AboutController			*aboutController;
	PreferenceController	*preferenceController;
}

- (IBAction)showPreferencePanel: (id)sender;
- (IBAction)showAboutPanel: (id)sender;

@end
