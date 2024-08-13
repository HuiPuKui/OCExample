//
//  main.m
//  异常处理
//
//  Created by HuiPuKui on 2024/8/13.
//

#import <Foundation/Foundation.h>

// @try 尝试执行一组语句
// @catch 尝试捕获 try 块中的异常
// finally 始终执行的语句集

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    @try {
        NSString *string = [array objectAtIndex:10];
    } @catch (NSException *exception) {
        NSLog(@"%@", exception.name);
        NSLog(@"Reason: %@", exception.reason);
    }
    
    @finally {
        NSLog(@"@finally Always Executes");
    }
    
    [pool drain];
    
    return 0;
}
