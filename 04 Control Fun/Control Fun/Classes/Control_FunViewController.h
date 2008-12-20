//
//  Control_FunViewController.h
//  Control Fun
//
//  Created by John Ahrens on 12/20/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Control_FunViewController : UIViewController 
{
	IBOutlet	UITextField	*nameField;
	IBOutlet	UITextField *numberField;
}

@property (nonatomic, retain)UITextField	*nameField;
@property (nonatomic, retain)UITextField	*numberField;

- (IBAction)textFieldDoneEditing: (id)sender;
- (IBAction)backgroundClick: (id)sender;

@end

