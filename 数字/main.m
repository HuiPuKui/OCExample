//
//  main.m
//  数字
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// NSNumber: 以对象的形式保存 int, float, bool 等基本类型

@interface SampleClass : NSObject

- (NSNumber *) multiplyA:(NSNumber *)a withB:(NSNumber *)b;

@end

@implementation SampleClass

- (NSNumber *) multiplyA:(NSNumber *)a withB:(NSNumber *)b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}

@end

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    SampleClass *sampleClass = [[SampleClass alloc] init];
    NSNumber *a = [NSNumber numberWithFloat:10.5];
    NSNumber *b = [NSNumber numberWithFloat:10.0];
    NSNumber *result = [sampleClass multiplyA:a withB:b];
    NSString *resultString = [result stringValue];
    NSLog(@"The product is %@\n", resultString);
    
    [pool drain];
    
    return 0;
}
