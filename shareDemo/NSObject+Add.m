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
//    NSLog(@"%@",dic);
    NSData *dicData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonStr = [[NSString alloc] initWithData:dicData encoding:NSUTF8StringEncoding];
    SDLog(@"%@",jsonStr);
}

+ (NSInteger)testNum {
    return 1;
}

@end
