//
//  main.m
//  类型定义
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

// typedef 同 C

typedef struct Books {
    NSString *title;
    NSString *author;
    NSString *subject;
    int book_id;
} Book;

// typedef 与 #define
// typedef 仅限于给符号名类型，而 #define 可以用来定义别名值
// typedef 解释由编译器执行，而 #define 语句由预处理器处理

#define TRUE 1
#define FALSE 0

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Book book;
    book.title = @"Objective-C 编程语言";
    book.author = @"Jc2182";
    book.subject = @"编程教程";
    book.book_id = 100;
    
    NSLog(@"Book title : %@\n", book.title);
    NSLog(@"Book author : %@\n", book.author);
    NSLog(@"Book subject : %@\n", book.subject);
    NSLog(@"Book Id : %d\n", book.book_id);
    
    NSLog(@"Value of TRUE : %d\n", TRUE);
    NSLog(@"Value of FALSE : %d\n", FALSE);
    
    [pool drain];
    
    return 0;
}
