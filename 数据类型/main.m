//
//  main.m
//  数据类型
//
//  Created by HuiPuKui on 2024/8/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    /**
     *  基本类型：整数类型、浮点类型
     *  枚举类型
     *  类型 void
     *  派生类型：指针类型、数组类型、结构类型、联合类型、函数类型
     */
    
    // 整数类型: char, unsigned char, signed char, int, unsigned int, short, unsigned short, long, unsigned long
    // sizeof
    NSAutoreleasePool *pool1 = [[NSAutoreleasePool alloc] init]; // 自动释放池，在块的末尾释放所有临时对象
    NSLog(@"Storage size for int : %lu \n", sizeof(int));
    [pool1 drain];
    
    // 浮点类型: float, double, long double
    // sizeof
    NSAutoreleasePool *pool2 = [[NSAutoreleasePool alloc] init];
    NSLog(@"Storage size for int : %lu \n", sizeof(float));
    [pool2 drain];
    
    // 语句以分号结尾
    
    // void 类型
    // 函数返回 void: void exit(int status);
    // 函数参数 void: int rand(void)
    
    return 0;
}
