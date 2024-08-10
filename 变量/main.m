//
//  main.m
//  变量
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

// extern 关键字用于声明变量
// 变量声明
extern int a, b;
extern int c;
extern float f;

// 函数声明
int func(void);

int main(int argc, const char * argv[]) {
    
    /* 变量定义 */
    int a, b;
    int c;
    float f;
    
    /* 实际初始化 */
    a = 10;
    b = 20;
    
    c = a + b;
    NSLog(@"value of c : %d \n", c);
    
    f = 70.0 / 3.0;
    NSLog(@"value of f : %f \n", f);
    
    // 函数调用
    int i = func();
    NSLog(@"value of i : %d \n", i);
    
    // 左值和右值
    // lvalue-引用内存位置的表达式
    // rvalue-存储在内存中某个地址处的数据值
    int g = 20;
    NSLog(@"value of g %d \n", g);
    
    return 0;
}

// 函数定义
int func(void) {
    return 0;
}
