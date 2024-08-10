//
//  main.m
//  函数返回数组
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// 函数返回数组要返回指针

@interface SampleClass : NSObject

- (int *) getRandom;

@end

@implementation SampleClass

- (int *) getRandom {
    static int r[10];
    int i;
    
    srand((unsigned)time(NULL));
    for (i = 0; i < 10; i ++) {
        r[i] = rand();
        NSLog(@"r[%d] = %d\n", i, r[i]);
    }
    
    return r;
}

@end

int main(int argc, const char * argv[]) {
    
    int *p;
    int i;
    
    SampleClass *sampleClass = [[SampleClass alloc] init];
    p = [sampleClass getRandom];
    for (i = 0; i < 10; i ++) {
        NSLog(@"*(p + %d) : %d\n", i, *(p + i));
    }
    
    return 0;
}
