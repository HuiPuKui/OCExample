//
//  main.m
//  数组
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// 与 C 基本相同

int main(int argc, const char * argv[]) {
    
    int n[10];
    int i, j;
    
    for (i = 0; i < 10; i ++) {
        n[i] = i + 100;
    }
    
    for (j = 0; j < 10; j ++) {
        NSLog(@"Element[%d] = %d\n", j, n[j]);
    }
    
    return 0;
}
