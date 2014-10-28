//
//  CoursesTableViewController.h
//  CourseCoreData
//
//  Created by Milan Shah on 10/20/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AddCourseViewController.h"
#import "DisplayEditViewController.h"

@interface CoursesTableViewController : UITableViewController <AddCourseViewControllerDelegate,NSFetchedResultsControllerDelegate>

@property (nonatomic,strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic,strong) NSFetchedResultsController *fetchedResultsController;



@end
