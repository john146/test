//
//  RootViewController.h
//  Nav
//
//  Created by John Ahrens on 5/11/09.
//  Copyright 2009 John Ahrens, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RootViewController : UITableViewController
	<UITableViewDelegate, UITableViewDataSource>
{
	NSArray	*controllers;
}

@property (nonatomic, retain)NSArray	*controllers;

@end
