//
//  TwoOBJ.m
//  RacSubjectDemo
//
//  Created by heqiao on 2017/12/11.
//  Copyright © 2017年 com.ForC. All rights reserved.
//

#import "TwoOBJ.h"

@interface TwoOBJ()

@property (nonatomic, copy, readonly) void(^nextBlcok)(id x);

@end

@implementation TwoOBJ

+ (instancetype)subScriber:(void(^)(id x))nextBlcok
{
    return [[self alloc] initWith:nextBlcok];
}

- (instancetype)initWith:(void(^)(id x))nextBlcok
{
    self = [super init];
    if (self == nil) return nil;
 
    self->_nextBlcok = nextBlcok;
    return self;
}

- (void)sendNext:(id)x
{
    if (self.nextBlcok) {
        self.nextBlcok(x);
    }
}

@end
