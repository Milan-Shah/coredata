//
//  Course.h
//  CourseCoreData
//
//  Created by Milan Shah on 10/20/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Course : NSManagedObject

@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSDate * releaseDate;

@end
