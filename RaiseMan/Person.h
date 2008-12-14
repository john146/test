//
//  Person.h
//  RaiseMan
//
//  Created by John Ahrens on 11/16/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject <NSCoding> 
{
	NSString	* personName;
	float		expectedRaise;
}

@property (readwrite, copy)NSString	* personName;
@property (readwrite)float			expectedRaise;

@end
