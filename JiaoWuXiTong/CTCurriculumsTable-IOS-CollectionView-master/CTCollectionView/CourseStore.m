//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Forrest Alfred on 15/4/14.
//  Copyright (c) 2015年 Forehead Tech. All rights reserved.
//

#import "CourseStore.h"
#import "CTCourseInfo.h"

@interface CourseStore()
@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation CourseStore

// Notice that this is a class method and prefixed with a + instead of a -
+ (instancetype)shareStore
{
    static CourseStore *sharedStore = nil;
    
    // Do I need to a sharedStore?
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}

// If a programmer calls [[BNRItemStore alloc] init], let him
// know the error of his ways
- (instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use +[BNRItemStore shareStore]" userInfo:nil];
    return nil;
}

- (instancetype)initPrivate
{
    self = [super init];
    if (self)
    {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)allItems
{
    return self.privateItems;
}

@end

