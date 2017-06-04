//
//  NSObject+Add.m
//  shareDemo
//
//  Created by oahgnehzoul on 2017/6/4.
//  Copyright © 2017年 oahgnehzoul. All rights reserved.
//

#import "NSObject+Add.h"

@implementation NSObject (Add)

+ (void)LogMessage:(NSString *)str {
    NSLog(@"LogMessage:%@", str);
}

+ (void)Log {
    NSLog(@"Log");
}

+ (void)LogDic:(NSDictionary *)dic {
    NSLog(@"%@",dic);
}

+ (NSInteger)testNum {
    return 1;
}

@end
