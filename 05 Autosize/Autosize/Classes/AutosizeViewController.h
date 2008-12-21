//
//  AutosizeViewController.h
//  Autosize
//
//  Created by John Ahrens on 12/21/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutosizeViewController : UIViewController 
{
	IBOutlet	UIButton	*button1;
	IBOutlet	UIButton	*button2;
	IBOutlet	UIButton	*button3;
	IBOutlet	UIButton	*button4;
	IBOutlet	UIButton	*button5;
	IBOutlet	UIButton	*button6;
}

@property (nonatomic, retain)UIView	*button1;
@property (nonatomic, retain)UIView *button2;
@property (nonatomic, retain)UIView	*button3;
@property (nonatomic, retain)UIView	*button4;
@property (nonatomic, retain)UIView	*button5;
@property (nonatomic, retain)UIView *button6;

@end

