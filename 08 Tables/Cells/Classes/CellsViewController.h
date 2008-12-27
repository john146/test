//
//  CellsViewController.h
//  Cells
//
//  Created by John Ahrens on 12/26/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellsViewController : UIViewController 
		<UITableViewDataSource, UITableViewDelegate>
{
	NSArray	*computers;
}

@property (nonatomic, retain)NSArray *computers;

@end

