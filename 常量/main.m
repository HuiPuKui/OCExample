//
//  main.m
//  常量
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// #define 和 const

#define LENGTH 10
#define WIDTH 5
#define NEWLINE '\n'

const int LENGTH2 = 10;
const int WIDTH2 = 5;
const char NEWLINE2 = '\n';

int main(int argc, const char * argv[]) {
    
    int area;
    area = LENGTH * WIDTH;
    NSLog(@"value of area: %d", area);
    NSLog(@"%c", NEWLINE);
    
    int area2;
    area2 = LENGTH2 * WIDTH2;
    NSLog(@"value of area2 : %d", area2);
    NSLog(@"%c", NEWLINE2);
    
    return 0;
}
