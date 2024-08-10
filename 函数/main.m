//
//  main.m
//  函数
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

/*
 方法声明
 
 - (return_type) method_name:(argumentType1)argumentName1
 joiningArgument2:(argumentType2)argumentName2 ...
 joiningArgumentn:(argumentTypen)argumentNamen;
 */

/*
 方法定义
 
- (return_type) method_name:(argumentType1)argumentName1
joiningArgument2:(argumentType2)argumentName2 ...
joiningArgumentn:(argumentTypen)argumentNamen {
    body of the function
}
 
 */

@interface SampleClass : NSObject

- (void)swapWithNumber:(int)num1 andNum2:(int)num2;

- (void)swapWithReference:(int *)num1 andNum2:(int *)num2;

@end

@implementation SampleClass

- (void)swapWithNumber:(int)num1 andNum2:(int)num2 {
    int temp;
    
    temp = num1;
    num1 = num2;
    num2 = temp;
}

- (void)swapWithReference:(int *)num1 andNum2:(int *)num2 {
    int temp;
    
    temp = *num1;
    *num1 = *num2;
    *num2 = temp;
}

@end

int main(int argc, const char * argv[]) {
    
    int a = 100;
    int b = 200;
    
    SampleClass *sampleClass = [[SampleClass alloc] init];
    
    NSLog(@"Before swap, value of a : %d\n", a);
    NSLog(@"Before swap, value of b : %d\n", b);
    [sampleClass swapWithNumber:a andNum2:b];
    NSLog(@"After swap, value of a : %d\n", a);
    NSLog(@"After swap, value of b : %d\n", b);
    
    NSLog(@"Before swap, value of a : %d\n", a);
    NSLog(@"Before swap, value of b : %d\n", b);
    [sampleClass swapWithReference:&a andNum2:&b];
    NSLog(@"After swap, value of a : %d\n", a);
    NSLog(@"After swap, value of b : %d\n", b);
    
    return 0;
}
