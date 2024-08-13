//
//  main.m
//  内存管理
//
//  Created by HuiPuKui on 2024/8/13.
//

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject

- (void) sampleMethod;

@end

@implementation SampleClass

- (void) sampleMethod {
    NSLog(@"Hello, World! \n");
}

- (void)dealloc {
    NSLog(@"Object deallocated");
}

@end

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        SampleClass *sampleClass = [[SampleClass alloc] init];
        [sampleClass sampleMethod];
        sampleClass = nil;
    }
    
    return 0;
}
