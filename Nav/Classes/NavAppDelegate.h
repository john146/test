//
//  NavAppDelegate.h
//  Nav
//
//  Created by John Ahrens on 5/11/09.
//  Copyright John Ahrens, LLC 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavAppDelegate : NSObject <UIApplicationDelegate> 
{
   IBOutlet UIWindow				*window;
	IBOutlet UINavigationController	*navController;
}

@property (nonatomic, retain)UIWindow				*window;
@property (nonatomic, retain)UINavigationController	*navController;

@end

