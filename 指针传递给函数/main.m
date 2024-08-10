//
//  main.m
//  指针传递给函数
//
//  Created by HuiPuKui on 2024/8/11.
//

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject

- (void) getSeconds:(int *)par;

- (double) getAverage:(int *)arr ofSize:(int)size;

@end

@implementation SampleClass

- (void) getSeconds:(int *)par {
    *par = time(NULL);
}

- (double) getAverage:(int *)arr ofSize:(int)size {
    int i, sum = 0;
    double avg;
    
    for (i = 0; i < size; i ++) {
        sum += arr[i];
    }
    
    avg = (double)sum / size;
    return avg;
}

@end

int main(int argc, const char * argv[]) {
    
    int sec;
    
    SampleClass *sampleClass = [[SampleClass alloc] init];
    [sampleClass getSeconds:&sec];
    NSLog(@"Number of seconds: %d\n", sec);
    
    int balance[5] = {1000, 2, 3, 17, 50};
    double avg;
    
    avg = [sampleClass getAverage:balance ofSize:5];
    NSLog(@"Average value is: %f\n", avg);
    
    return 0;
}
