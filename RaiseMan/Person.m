//
//  Person.m
//  RaiseMan
//
//  Created by John Ahrens on 11/16/08.
//  Copyright 2008 John Ahrens, LLC. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)init
{
	if (![super init])
	{
		return nil;
	}
	
	expectedRaise	= 5.0;
	personName		= @"New Person";
	
	return self;
}

- (id)initWithCoder: (NSCoder *)coder
{
	if (![super init])
	{
		return nil;
	}
	
	personName		= [[coder decodeObjectForKey: @"personName"] retain];
	expectedRaise	= [coder decodeFloatForKey: @"expectedRaise"];
	
	return self;
}

@synthesize personName;
@synthesize expectedRaise;

- (void)setNilValueForKey: (NSString *)key
{
	if ([key isEqual: @"expectedRaise"])
	{
		[self setExpectedRaise: 0.0];
	}
	else
	{
		[super setNilValueForKey: key];
	}
}

- (void)encodeWithCoder: (NSCoder *)coder
{
	[coder encodeObject: personName
				 forKey: @"personName"];
	
	[coder encodeFloat: expectedRaise
				forKey: @"expectedRaise"];
}

- (void)dealloc
{
	[personName release];
	[super dealloc];
}

@end
