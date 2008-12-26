//
//  Simple_TableViewController.h
//  Simple Table
//
//  Created by John Ahrens on 12/25/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Simple_TableViewController : UIViewController 
		<UITableViewDelegate, UITableViewDataSource>
{
	NSArray	*listData;
}

@property (nonatomic, retain)NSArray *listData;

@end

