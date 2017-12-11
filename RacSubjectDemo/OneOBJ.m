//
//  OneOBJ.m
//  RacSubjectDemo
//
//  Created by heqiao on 2017/12/11.
//  Copyright © 2017年 com.ForC. All rights reserved.
//

#import "OneOBJ.h"
#import "TwoOBJ.h"
@interface OneOBJ()

@property (nonatomic, strong) NSMutableArray *subscrbers;

@end

@implementation OneOBJ

+ (instancetype)subject
{
    return [[self alloc] init];
}
- (instancetype)init
{
    self = [super init];
    if (self == nil) return nil;
    
    self.subscrbers = [[NSMutableArray alloc] initWithCapacity:1];
    return self;
}

- (TwoOBJ *)subScriberNext:(void(^)(id x))subScriber
{
    TwoOBJ *obj = [TwoOBJ subScriber:subScriber];
    [self.subscrbers addObject:obj];
    return obj;
}

- (void)sendNext:(id)x
{
    for (TwoOBJ *obj in self.subscrbers) {
        [obj sendNext:x];
    }
}


@end
