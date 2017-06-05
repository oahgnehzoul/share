//
//  ViewController.m
//  shareDemo
//
//  Created by oahgnehzoul on 2017/6/4.
//  Copyright © 2017年 oahgnehzoul. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    
    //0.常用自定义 Log
    [self testSDLog:@"testLog"];

    /*
     一些宏
     */
    NSLog(@"%s",__FILE__);
    NSLog(@"%d",__LINE__);
    NSLog(@"%s",__PRETTY_FUNCTION__);
    
    
    //1.全局奔溃断点
//    NSArray *tests = @[@1,@2,@3];
//    tests[4];

    NSInteger conditionNum = 1;
    NSString *testStr = @"testConditionBreakPoint";
    NSDictionary *dic = @{
                          @"key":@"🐷value",
                          @"key2":@"🐂value2",
                          @"键3":@"🐴值3",
                          @"你好":@"吃饭🍚了么"
                          };
    //2.直接打印字典，经常会有中文 Unicode->中文
    SDLog(@"转换前%@",dic);
    
    NSData *dicData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonStr = [[NSString alloc] initWithData:dicData encoding:NSUTF8StringEncoding];
    SDLog(@"转换后%@",jsonStr);
    
    
    //2.条件断点
    
    
    
    
    [dic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {

        
        
    }];
    
    
    //3.@表达式@,调用其他类的方法. 试试打印 C++的函数？？
    
    //4.symbolic  Breakpoints  页面跳转，方法调用
    
    
}


- (void)testSDLog:(NSString *)str {
    SDLog(@"%@",str);
}

- (void)LogStr:(NSString *)str {
    NSLog(@"LogStr:%@",str);
}

- (NSString *)str {
    return @"🐂🐔🐶";
}


@end
