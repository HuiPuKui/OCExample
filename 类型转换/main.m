//
//  main.m
//  类型转换
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

// 格式：(type_name)expression

int main(int argc, const char * argv[]) {
    
    // CGFloat: 从 float 的基本类型派生的（如果是 32 位则是 float的，如果是 64 位则是 double 的）
    int sum = 17, count = 5;
    CGFloat mean;
    
    mean = (CGFloat)sum / count;
    NSLog(@"Value of mean : %f\n", mean);
    
    // 整型提升: 将小于 int 或 unsigned int 的值转换为 int 或 unsigned int 的过程
    int i = 17;
    char c = 'c';
    int sum1;
    
    sum1 = i + c;
    NSLog(@"Value of sum : %d\n", sum1);
    
    // 通常的算术转换：首先执行整数提升，如果操作数仍有不同的类型，则转换为最高类型
    int i3 = 17;
    char c3 = 'c';
    CGFloat sum3;
    
    sum3 = i3 + c3;
    NSLog(@"Value of sum3 : %f\n", sum3);
    
    return 0;
}
