//
//  Created by Forrest Alfred on 15/4/14.
//  Copyright (c) 2015年 Forehead Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

@class class;

@interface CourseStore : NSObject

@property (nonatomic, readonly) NSArray *allCourses;

+ (instancetype)shareStore;


@end
