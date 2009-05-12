//
//  DisclosureDetailController.h
//  Nav
//
//  Created by John Ahrens on 5/11/09.
//  Copyright 2009 John Ahrens, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DisclosureDetailController : UIViewController
{
	IBOutlet UILabel	*label;
	NSString			*message;
}

@property (nonatomic, retain)UILabel	*label;
@property (nonatomic, retain)NSString	*message;

@end
