//
//  OneReplayOBJ.m
//  RacSubjectDemo
//
//  Created by heqiao on 2017/12/11.
//  Copyright © 2017年 com.ForC. All rights reserved.
//

#import "OneReplayOBJ.h"
#import "TwoOBJ.h"
@interface OneReplayOBJ ()
@property (nonatomic, strong, readonly) NSMutableArray *valuesArray;
@end

@implementation OneReplayOBJ

- (instancetype)init
{
    self = [super init];
    if (self == nil) return nil;
    
    self->_valuesArray = [NSMutableArray arrayWithCapacity:1];
    return self;
}

- (void)subScriberNext:(void(^)(id x))subScriber
{
    TwoOBJ *obj = [super subScriberNext:subScriber];
    
    for (id x in self.valuesArray) {
        [obj sendNext:x];
    }
}

- (void)sendNext:(id)x
{
    [self.valuesArray addObject:x];
    [super sendNext:x];
}

@end
