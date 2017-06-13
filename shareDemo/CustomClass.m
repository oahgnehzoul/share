//
//  CustomClass.m
//  shareDemo
//
//  Created by oahgnehzoul on 2017/6/5.
//  Copyright © 2017年 oahgnehzoul. All rights reserved.
//

#import "CustomClass.h"

@implementation CustomClass

+ (NSString *)className {
    return @"CustomClass";
}

+ (NSDictionary *)logDic {
    return @{
             @"customKey":@"自定义返回值"
             };
}

@end
