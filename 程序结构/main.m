//
//  main.m
//  程序结构
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// 类声明
@interface SampleClass : NSObject

- (void)sampleMethod;

@end

// 类实现
@implementation SampleClass

- (void)sampleMethod {
    NSLog(@"Hello, world! \n");
}

@end

int main(int argc, const char * argv[]) {
    /* 我的第一个 OC 程序 */
    SampleClass *sampleClass = [[SampleClass alloc] init];
    [sampleClass sampleMethod];
    
    return 0;
}
