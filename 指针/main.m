//
//  main.m
//  指针
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int var = 20;
    int *ip;
    ip = &var;
    
    NSLog(@"Address of var variable: %x\n", &var);
    NSLog(@"Address stored in ip variable: %x\n", ip);
    NSLog(@"Value of *ip variable: %d\n", *ip);
    
    int *ptr = NULL;
    NSLog(@"The value of ptr is : %x\n", ptr);
    return 0;
}
