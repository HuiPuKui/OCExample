//
//  main.m
//  命令行参数
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

// Xcode 添加命令行参数：Product -> Scheme -> Edit Scheme -> Arguments

int main(int argc, const char * argv[]) {
    
    NSLog(@"Program name %s\n", argv[0]);
    
    NSLog(@"argc = %d\n", argc);
    for (int i = 0; i < argc; i ++) {
        NSLog(@"argv[%d] = %s\n", i, argv[i]);
    }
    
    if (argc == 2) {
        NSLog(@"The argument supplied is %s\n", argv[1]);
    } else if (argc > 2) {
        NSLog(@"Too many arguments supplied.\n");
    } else {
        NSLog(@"One argument expected.\n");
    }
    
    return 0;
}
