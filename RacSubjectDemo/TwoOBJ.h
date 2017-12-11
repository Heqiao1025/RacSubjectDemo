//
//  TwoOBJ.h
//  RacSubjectDemo
//
//  Created by heqiao on 2017/12/11.
//  Copyright © 2017年 com.ForC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TwoOBJ : NSObject

+ (instancetype)subScriber:(void(^)(id x))nextBlcok;

- (void)sendNext:(id)x;

@end
