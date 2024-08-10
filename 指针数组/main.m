//
//  main.m
//  指针数组
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// 数组指针示例
// int *ptr[MAX]

const int MAX = 3;
const int MAX2 = 4;

int main(int argc, const char * argv[]) {
    
    int var[] = {10, 100, 200};
    int i, *ptr[MAX];
    
    for (i = 0; i < MAX; i ++) {
        ptr[i] = &var[i];
    }
    
    for (i = 0; i < MAX; i ++) {
        NSLog(@"Value of var[%d] = %d\n", i, *ptr[i]);
    }
    
    // ----------------------------------------------
    
    char *names[] = {"Zara Ali", "Hina Ali", "Nuha Ali", "Sara Ali"};
    i = 0;
    for (i = 0; i < MAX2; i ++) {
        NSLog(@"Value of names[%d] = %s\n", i, names[i]);
    }
    
    return 0;
}
