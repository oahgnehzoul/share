//
//  NSObject+Add.h
//  shareDemo
//
//  Created by oahgnehzoul on 2017/6/4.
//  Copyright © 2017年 oahgnehzoul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Add)

+ (void)Log;

+ (void)LogMessage:(NSString *)str;

+ (void)LogDic:(NSDictionary *)dic;

+ (NSInteger)testNum;
@end

