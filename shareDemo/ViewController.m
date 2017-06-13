//
//  ViewController.m
//  shareDemo
//
//  Created by oahgnehzoul on 2017/6/4.
//  Copyright © 2017年 oahgnehzoul. All rights reserved.
//

#import "ViewController.h"
#import "CustomClass.h"

#ifdef DEBUG
#define SNSLog(format,...) NSLog(format, ##__VA_ARGS__)
#else
#define SNSLog(format,...)
#endif

typedef NS_ENUM(NSInteger,SDButtonTag) {
    SDButtonTagOne = 1, //使用自定义 Log
    SDButtonTagTwo,     //打印一些宏
    SDButtonTagThree,   //call
    SDButtonTagFour,    //打印 NSDictionary
    SDButtonTagFive,    //
    SDButtonTagSix      //globalBreakpoint
};

@interface ViewController ()


@property (nonatomic, strong) CustomClass *customClass;
@property (nonatomic, strong) CustomClass *customClassA;
@property (nonatomic, strong) CustomClass *customClassB;
@property (nonatomic, strong) CustomClass *customClassC;
@property (nonatomic, strong) CustomClass *customClassD;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSInteger conditionNum = 1;
    NSString *testStr = @"testConditionBreakPoint";
    
    //2.条件断点
    
    
    
    
    
    
    //3.@表达式@,调用其他类的方法. 试试打印 C++的函数？？
    
    //4.symbolic  Breakpoints  页面跳转，方法调用
    
    
}


- (void)LogStr:(NSString *)str {
    NSLog(@"LogStr:%@",str);
}

- (NSString *)str {
    return @"🐂🐔🐶";
}

- (IBAction)btnAction:(UIButton *)sender {
    switch (sender.tag) {
        case SDButtonTagOne:
            [self customNSLog];
            break;
        case SDButtonTagTwo:
            [self printMacro];
            break;
        case SDButtonTagThree:
            [self call];
            break;
        case SDButtonTagFour:
            [self printNSDictionary];
            break;
        case SDButtonTagFive:
            [self globalBreakpoint];
            break;
        default:
            break;
    }
}

//1.常用自定义 Log
- (void)customNSLog {
//    SDLog(@"%@",@"customNSLog");
    SDLog(@"customNSLog");
}

//2.打印宏
- (void)printMacro {
    NSLog(@"%s",__FILE__);
    NSLog(@"%d",__LINE__);
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

//
- (void)call {
    //yellow
    //gray
    //purple
    
    //break at '%B' @[self printMacro]@
    //po [self printMacro]
    //pjson [CustomClass logDic]
    //po [CustomClass logDic]
}

- (void)printNSDictionary {
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
    //pjson dic
    //
    //call (void)[NSObject LogDic:dic]
 
    //expr (void)[NSObject LogDic:dic]
    //error: no known method '+LogDic:'; cast the message send to the method's return type

    //break at '%B' @(void)[NSObject LogDic:dic]@
}

- (void)globalBreakpoint {
    //.全局奔溃断点
    NSArray *tests = @[@1,@2,@3];
    tests[4];
}

@end
