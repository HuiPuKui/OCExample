//
//  main.m
//  break语句
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int a = 10;
    
    while (a < 20) {
        NSLog(@"value of a: %d\n", a);
        a ++;
        
        if (a > 15) {
            /* 使用 break 语句终止循环 */
            break;
        }
    }
    return 0;
}
