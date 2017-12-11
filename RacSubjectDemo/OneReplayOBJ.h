//
//  OneReplayOBJ.h
//  RacSubjectDemo
//
//  Created by heqiao on 2017/12/11.
//  Copyright © 2017年 com.ForC. All rights reserved.
//

#import "OneOBJ.h"

@interface OneReplayOBJ : OneOBJ

- (void)subScriberNext:(void(^)(id x))subScriber;

- (void)sendNext:(id)x;

@end
