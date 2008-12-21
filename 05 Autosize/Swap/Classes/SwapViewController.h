//
//  SwapViewController.h
//  Swap
//
//  Created by John Ahrens on 12/21/08.
//  Copyright John Ahrens, LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

#define degreesToRadian(x) (M_PI * (x) / 180.0)

@interface SwapViewController : UIViewController 
{
	IBOutlet	UIView		*landscape;
	IBOutlet	UIView		*portrait;
	
	// Foo
	IBOutlet	UIButton	*landscapeFooButton;
	IBOutlet	UIButton	*portraitFooButton;
	
	// Bar
	IBOutlet	UIButton	*landscapeBarButton;
	IBOutlet	UIButton	*portraitBarButton;
}

@property (nonatomic, retain)UIView		*landscape;
@property (nonatomic, retain)UIView		*portrait;
@property (nonatomic, retain)UIButton	*landscapeFooButton;
@property (nonatomic, retain)UIButton	*portraitFooButton;
@property (nonatomic, retain)UIButton	*landscapeBarButton;
@property (nonatomic, retain)UIButton	*portraitBarButton;

- (IBAction)buttonPressed: (id)sender;

@end

