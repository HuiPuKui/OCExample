//
//  main.m
//  多维数组
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// 基本与 C 相同

int main(int argc, const char * argv[]) {
    
    int a[5][2] = {{0, 0}, {1, 2}, {2, 4}, {3, 6}, {4, 8}};
    int i, j;
    
    for (i = 0; i < 5; i ++) {
        for (j = 0; j < 2; j ++) {
            NSLog(@"a[%d][%d] = %d\n", i, j, a[i][j]);
        }
    }
    
    return 0;
}
