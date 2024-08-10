//
//  main.m
//  指针算术
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

const int MAX = 3;

int main(int argc, const char * argv[]) {
    
    int var[] = {10, 100, 200};
    int i, *ptr;
    
    // 递增指针
    ptr = var;
    for (i = 0; i < MAX; i ++) {
        NSLog(@"Address of var[%d] = %x\n", i, ptr);
        NSLog(@"Value of var[%d] = %d\n", i, *ptr);
        ptr ++;
    }
    
    // 递减指针
    ptr = &var[MAX - 1];
    for (i = MAX; i > 0; i --) {
        NSLog(@"Address of var[%d] = %x\n", i, ptr);
        NSLog(@"Value of var[%d] = %d\n", i, *ptr);
        ptr --;
    }
    
    // 指针比较
    ptr = var;
    i = 0;
    while (ptr <= &var[MAX - 1]) {
        NSLog(@"Address of var[%d] = %x\n", i, ptr);
        NSLog(@"Value of var[%d] = %d\n", i, *ptr);
        ptr ++;
        i ++;
    }
    
    return 0;
}
