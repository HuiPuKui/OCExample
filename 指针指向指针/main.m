//
//  main.m
//  指针指向指针
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int var;
    int *ptr;
    int **pptr;
    
    var = 2000;
    
    ptr = &var;
    pptr = &ptr;
    
    NSLog(@"Value of var = %d\n", var);
    NSLog(@"Value of available at *ptr = %d\n", *ptr);
    NSLog(@"Value available at **pptr = %d\n", **pptr);
    
    return 0;
}
