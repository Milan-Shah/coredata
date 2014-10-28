//
//  Course.m
//  CourseCoreData
//
//  Created by Milan Shah on 10/20/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import "Course.h"


@implementation Course

@dynamic author;
@dynamic title;
@dynamic releaseDate;

-(void) awakeFromInsert {
    [super awakeFromInsert];
    self.releaseDate = [NSDate date];
}

@end
