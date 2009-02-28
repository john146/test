//
//  SectionsAppDelegate.h
//  Sections
//
//  Created by John Ahrens on 1/4/09.
//  Copyright John Ahrens, LLC 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SectionsViewController;

@interface SectionsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SectionsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SectionsViewController *viewController;

@end

