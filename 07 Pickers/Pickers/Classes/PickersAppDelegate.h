//
//  PickersAppDelegate.h
//  Pickers
//
//  Created by John Ahrens on 12/23/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickersAppDelegate : NSObject <UIApplicationDelegate> 
{
    UIWindow			*window;
	UITabBarController	*rootController;
}

@property (nonatomic, retain) IBOutlet UIWindow				*window;
@property (nonatomic, retain) IBOutlet UITabBarController	*rootController;

@end

