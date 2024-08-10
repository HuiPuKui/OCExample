//
//  main.m
//  结构体
//
//  Created by HuiPuKui on 2024/8/11.
//

#import <Foundation/Foundation.h>

/*
 定义结构体
 struct [structure tag] {
     member definition;
     member definition;
     ...
     member definition;
 } [one or more structure variables];
 */

struct Books {
    NSString *title;
    NSString *author;
    NSString *subject;
    int book_id;
};

@interface SampleClass : NSObject

- (void) printBook:(struct Books)book;

- (void) printBookByPtr:(struct Books *)book;

@end

@implementation SampleClass

- (void) printBook:(struct Books)book {
    NSLog(@"Book title : %@\n", book.title);
    NSLog(@"Book author : %@\n", book.author);
    NSLog(@"Book subject : %@\n", book.subject);
    NSLog(@"Book book_id : %d\n", book.book_id);
}

- (void) printBookByPtr:(struct Books *)book {
    NSLog(@"Book title : %@\n", book->title);
    NSLog(@"Book author : %@\n", book->author);
    NSLog(@"Book subject : %@\n", book->subject);
    NSLog(@"Book book_id : %d\n", book->book_id);
}

@end

// 位域：
// 1. 将几个对象打包成一个机器字。例如，可以压缩1位标志。
// 2. 读取外部文件格式-可以读取非标准文件格式。例如 9 位整数。
// Objective-C 允许我们通过在结构定义中通过在变量后加上:bit长度来做到这一点。

struct packed_struct {
    unsigned int f1:1;
    unsigned int f2:1;
    unsigned int f3:1;
    unsigned int f4:1;
    unsigned int type:4;
    unsigned int my_int:9;
} pack;


int main(int argc, const char * argv[]) {
    
    struct Books Book1;
    struct Books Book2;
    
    Book1.title = @"Objective-C Programming";
    Book1.author = @"Nuha Ali";
    Book1.subject = @"Objective-C Programming Tutorial";
    Book1.book_id = 6495407;
    
    Book2.title = @"Telecom Billing";
    Book2.author = @"Zara Ali";
    Book2.subject = @"Telecom Billing Tutorial";
    Book2.book_id = 6495700;
    
    SampleClass *sampleClass = [[SampleClass alloc] init];
    [sampleClass printBook:Book1];
    [sampleClass printBook:Book2];
    
    [sampleClass printBookByPtr:&Book1];
    [sampleClass printBookByPtr:&Book2];
    
    return 0;
}
