//
//  main.m
//  数组的指针
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// 与 C 基本一致

int main(int argc, const char * argv[]) {
    
    double balance[5] = {1000.0, 2.0, 3.4, 17.0, 50.0};
    double *p;
    int i;
    
    p = balance;
    
    NSLog(@"Array values using pointer\n");
    for (i = 0; i < 5; i ++) {
        NSLog(@"*(p + %d) : %f\n", i, *(p + i));
    }
    
    NSLog(@"Array values using balance as address\n");
    for (i = 0; i < 5; i ++) {
        NSLog(@"*(balance + %d) : %f\n", i, *(balance + i));
    }
    
    return 0;
}
