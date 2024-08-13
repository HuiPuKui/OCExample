//
//  main.m
//  日期和时间
//
//  Created by HuiPuKui on 2024/8/13.
//

#import <Foundation/Foundation.h>

// NSDate 和 NSDateFormatter
// NSDateFormatter 是帮助程序类，可以将 NSDate 转换为 NSString，反之亦然

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    
    NSString *dateString = [dateFormatter stringFromDate:date];
    NSLog(@"Current date is %@", dateString);
    NSDate *newDate = [dateFormatter dateFromString:dateString];
    NSLog(@"NewDate : %@", newDate);
    
    [pool drain];
    
    return 0;
}
