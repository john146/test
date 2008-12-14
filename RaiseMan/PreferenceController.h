//
//  PreferenceController.h
//  RaiseMan
//
//  Created by John Ahrens on 12/6/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

extern NSString	* const BNRTableBgColorKey;
extern NSString * const BNREmptyDocKey;

@interface PreferenceController : NSWindowController 
{
	IBOutlet NSColorWell	*colorWell;
	IBOutlet NSButton		*checkBox;
}

- (IBAction)changeBackgroundColor: (id)sender;
- (IBAction)changeNewEmptyDoc: (id)sender;
- (IBAction)resetPreferences: (id)sender;

- (NSColor *)tableBGColor;
- (BOOL)emptyDoc;

@end
