//
//  Button_FunViewController.h
//  Button Fun
//
//  Created by John Ahrens on 12/19/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Button_FunViewController : UIViewController 
{
	IBOutlet	UILabel	*statusText;
}

@property	(retain, nonatomic) UILabel	*statusText;

- (IBAction)buttonPressed: (id)sender;

@end

