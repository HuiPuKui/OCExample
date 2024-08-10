//
//  main.m
//  数组函数参数
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// 数组参数的参数形式: int* int[10] int[]

@interface SampleClass : NSObject

- (double) getAverage:(int[])arr andSize:(int)size;

@end

@implementation SampleClass

- (double) getAverage:(int[])arr andSize:(int)size {
    int i;
    double avg;
    double sum = 0;
    
    for (int i = 0; i < size; i ++) {
        sum += arr[i];
    }
    
    avg = sum / size;
    return avg;
}

@end

int main(int argc, const char * argv[]) {
    
    int balance[5] = {1000, 2, 3, 17, 50};
    double avg;
    
    SampleClass *sampleClass = [[SampleClass alloc] init];
    avg = [sampleClass getAverage:balance andSize:5];
    
    NSLog(@"Average value is: %f\n", avg);
    
    return 0;
}
