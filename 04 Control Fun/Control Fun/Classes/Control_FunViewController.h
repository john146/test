//
//  Control_FunViewController.h
//  Control Fun
//
//  Created by John Ahrens on 12/20/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kShowSegmentIndex	0 // TODO: Need a better method of handling this than a #define

@interface Control_FunViewController : UIViewController 
{
	IBOutlet	UITextField	*nameField;
	IBOutlet	UITextField *numberField;
	IBOutlet	UILabel		*sliderLabel;
	IBOutlet	UISwitch	*leftSwitch;
	IBOutlet	UISwitch	*rightSwitch;
	IBOutlet	UIView		*switchView;
}

@property (nonatomic, retain)UITextField	*nameField;
@property (nonatomic, retain)UITextField	*numberField;
@property (nonatomic, retain)UILabel		*sliderLabel;
@property (nonatomic, retain)UISwitch		*leftSwitch;
@property (nonatomic, retain)UISwitch		*rightSwitch;
@property (nonatomic, retain)UIView			*switchView;

- (IBAction)textFieldDoneEditing: (id)sender;
- (IBAction)backgroundClick: (id)sender;
- (IBAction)sliderChanged: (id)sender;
- (IBAction)switchChanged: (id)sender;
- (IBAction)toggleShowHide: (id)sender;

@end

