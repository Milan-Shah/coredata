//
//  DisplayEditViewController.m
//  CourseCoreData
//
//  Created by Milan Shah on 10/20/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import "DisplayEditViewController.h"
#import "AppDelegate.h"

@interface DisplayEditViewController ()

@end

@implementation DisplayEditViewController

@synthesize titleField;
@synthesize authorField;
@synthesize dateField;

@synthesize editButton;
@synthesize doneButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    titleField.text = [self.currentCourse title];
    authorField.text = [self.currentCourse author];
    
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    dateField.text = [formatter stringFromDate:[self.currentCourse releaseDate]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)doneEditing:(id)sender {
    
    titleField.enabled = NO;
    authorField.enabled = NO;
    dateField.enabled = NO;
    
    titleField.borderStyle = UITextBorderStyleNone;
    authorField.borderStyle = UITextBorderStyleNone;
    dateField.borderStyle = UITextBorderStyleNone;
    
    editButton.hidden = NO;
    doneButton.hidden = YES;
    
    _currentCourse.title = titleField.text;
    _currentCourse.author = authorField.text;
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd"];
    _currentCourse.releaseDate = [df dateFromString:dateField.text];
    
    AppDelegate *myApp = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    [myApp saveContext];
}

- (IBAction)startEditing:(id)sender {
    
    titleField.enabled = YES;
    authorField.enabled = YES;
    dateField.enabled = YES;
    
    titleField.borderStyle = UITextBorderStyleRoundedRect;
    authorField.borderStyle = UITextBorderStyleRoundedRect;
    dateField.borderStyle = UITextBorderStyleRoundedRect;
    
    editButton.hidden = YES;
    doneButton.hidden = NO;
}
@end
