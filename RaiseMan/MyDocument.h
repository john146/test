//
//  MyDocument.h
//  RaiseMan
//
//  Created by John Ahrens on 11/16/08.
//  Copyright John Ahrens, LLC 2008 . All rights reserved.
//


#import <Cocoa/Cocoa.h>
@class Person;

@interface MyDocument : NSDocument
{
	NSMutableArray				* employees;
	
	IBOutlet NSTableView		* tableView;
	IBOutlet NSArrayController	* employeeController;
}

- (IBAction)createEmployee: (id)sender;

- (void)setEmployees: (NSMutableArray *)a;
- (void)removeObjectFromEmployeesAtIndex: (int)index;
- (void)insertObject: (Person *)p
  inEmployeesAtIndex: (int)index;
@end
