//
//  main.m
//  预处理
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

/*
 
 #define
 #include
 #undef
 #ifdef
 #ifndef
 #if
 #else
 #elif
 #endif
 #error
 #pragma
 
 __DAET__
 __TIME__
 __FILE__
 __LINE__
 __STDC__
 
 */

// 宏延续\  字符串化#
#define message_for(a, b) \
    NSLog(@#a " and " #b ": We love you!\n")

// 令牌粘贴## : 将宏定义中的两个单独的标记合并为一个标记
// 等效于：NSLog(@"token34 = %d", token34);
#define tokenpaster(n) NSLog(@"token" #n " = %d", token##n)

// defined() 运算符 定义了为true，否则false
#if !defined(MESSAGE)
#define MESSAGE "You wish!"
#endif

// 参数化的宏
//int square(int x) {
//    return x * x;
//}
// 等效于
#define square(x) ((x) * (x))

#define MYMAX(x, y) ((x) > (y) ? (x) : (y))

int main(int argc, const char * argv[]) {
    
    message_for(Carole, Debra);
    
    int token34 = 40;
    tokenpaster(34);
    
    NSLog(@"Here is the message: %s\n", MESSAGE);
    NSLog(@"square 4: %d", square(4));
    NSLog(@"Max between 20 and 10 is %d\n", MYMAX(10, 20));
    
    return 0;
}
