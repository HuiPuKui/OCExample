//
//  main.m
//  封装
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

#import "Adder.h"

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Adder *adder = [[Adder alloc] initWithInitialNumber:10];
    [adder addNumber:5];
    [adder addNumber:4];
    NSLog(@"The total is %ld", [adder getTotal]);
    
    [pool drain];
    
    return 0;
}
