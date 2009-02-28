//
//  SampleMapAppDelegate.h
//  SampleMap
//
//  Created by John Ahrens on 2/28/09.
//  Copyright John Ahrens, LLC 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SampleMapViewController;

@interface SampleMapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SampleMapViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SampleMapViewController *viewController;

@end

