//
//  AddCourseViewController.h
//  CourseCoreData
//
//  Created by Milan Shah on 10/20/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@protocol AddCourseViewControllerDelegate <NSObject>

-(void) addCourseViewControllerDidSave;
-(void) addCourseViewControllerDidCancel:(Course *)courseToDelete;

@end

@interface AddCourseViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *titleField;
@property (strong, nonatomic) IBOutlet UITextField *authorField;
@property (strong, nonatomic) IBOutlet UITextField *dateField;

@property (nonatomic,strong) Course *currentCourse;
@property (nonatomic,weak)id <AddCourseViewControllerDelegate> delegate;



- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end

