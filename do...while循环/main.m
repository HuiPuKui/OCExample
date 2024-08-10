//
//  main.m
//  do...while循环
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int a = 10;
    do {
        NSLog(@"value of a : %d \n", a);
        a = a + 1;
    } while (a < 20);
    
    return 0;
}
