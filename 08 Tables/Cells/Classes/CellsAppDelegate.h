//
//  CellsAppDelegate.h
//  Cells
//
//  Created by John Ahrens on 12/26/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CellsViewController;

@interface CellsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CellsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CellsViewController *viewController;

@end

