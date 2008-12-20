//
//  Control_FunAppDelegate.h
//  Control Fun
//
//  Created by John Ahrens on 12/20/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Control_FunViewController;

@interface Control_FunAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Control_FunViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Control_FunViewController *viewController;

@end

