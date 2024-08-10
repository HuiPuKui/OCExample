//
//  main.m
//  continue语句
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int a = 10;
    
    do {
        if (a == 15) {
            a = a + 1;
            continue;
        }
        NSLog(@"value of a: %d\n", a);
        a ++;
    } while (a < 20);
    
    return 0;
}
