//
//  DisclosureButtonController.h
//  Nav
//
//  Created by John Ahrens on 5/11/09.
//  Copyright 2009 John Ahrens, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SecondLevelViewController.h"

@class DisclosureDetailController;

@interface DisclosureButtonController : SecondLevelViewController
		<UITableViewDelegate, UITableViewDataSource>
{
	NSArray						*list;
	DisclosureDetailController	*childController;
}

@property (nonatomic, retain)NSArray *list;

@end
