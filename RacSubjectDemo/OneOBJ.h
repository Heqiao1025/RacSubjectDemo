//
//  OneOBJ.h
//  RacSubjectDemo
//
//  Created by heqiao on 2017/12/11.
//  Copyright © 2017年 com.ForC. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TwoOBJ;
@interface OneOBJ : NSObject

+ (instancetype)subject;

- (TwoOBJ *)subScriberNext:(void(^)(id x))subScriber;

- (void)sendNext:(id)x;

@end
