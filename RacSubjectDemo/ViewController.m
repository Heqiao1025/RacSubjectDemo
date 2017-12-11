//
//  ViewController.m
//  RacSubjectDemo
//
//  Created by heqiao on 2017/12/11.
//  Copyright © 2017年 com.ForC. All rights reserved.
//

#import "ViewController.h"
#import "OneOBJ.h"
#import "OneReplayOBJ.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    OneOBJ *obj = [OneOBJ subject];
//    [obj subScriberNext:^(id x) {
//        NSLog(@"%@", x);
//    }];
//    [obj sendNext:@"1"];
//    [obj subScriberNext:^(id x) {
//        NSLog(@"%@", x);
//    }];
//    [obj sendNext:@"2"];
    
    OneReplayOBJ *obj1 = [OneReplayOBJ subject];
    [obj1 sendNext:@"1"];
    [obj1 subScriberNext:^(id x) {
        NSLog(@"OneReplayOBJ1:%@", x);
    }];
    [obj1 sendNext:@"2"];
    [obj1 subScriberNext:^(id x) {
        NSLog(@"OneReplayOBJ2:%@", x);
    }];
    [obj1 sendNext:@"3"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
