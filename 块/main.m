//
//  main.m
//  块
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// 类似于 闭包 或 lambda

/*
 块声明
 returntype (^blockName)(argumentType);
 
 块定义
 returntype (^blockName)(argumentType) = ^{
 
 };
 */

typedef void (^CompletionBlock)(void);
@interface SampleClass : NSObject

- (void)performActionWithCompletion:(CompletionBlock)completionBlock;

@end

@implementation SampleClass

- (void)performActionWithCompletion:(CompletionBlock)completionBlock {
    NSLog(@"Action Performed");
    completionBlock();
}

@end

int main(int argc, const char * argv[]) {
    // 举例
    void (^sampleBlock)(void) = ^{
        NSLog(@"This is a block");
    };
    sampleBlock();
    
    // 块接受参数和返回值
    double (^multiplyTwoValues)(double, double) = ^(double firstValue, double secondValue) {
        return firstValue * secondValue;
    };
    double result = multiplyTwoValues(2, 4);
    NSLog(@"The result is %f\n", result);
    
    // 使用 typedef 的块
    SampleClass *sampleClass = [[SampleClass alloc] init];
    [sampleClass performActionWithCompletion:^(void) {
        NSLog(@"Completion is called to intimate action is performed.");
    }];
    
    return 0;
}
