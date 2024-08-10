//
//  main.m
//  嵌套循环
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int i, j;
    for (i = 2; i < 100; i ++) {
        for (j = 2; j <= (i / j); j ++) {
            if (!(i % j)) break;
        }
        if (j > (i / j)) NSLog(@"%d is prime\n", i);
    }
    
    return 0;
}
