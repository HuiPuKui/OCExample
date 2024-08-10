//
//  main.m
//  字符串
//
//  Created by HuiPuKui on 2024/8/11.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSString *str1 = @"Hello";
    NSString *str2 = @"World";
    NSString *str3;
    int len;
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    str3 = [str2 uppercaseString];
    NSLog(@"Uppercase String : %@\n", str3);
    
    str3 = [str1 stringByAppendingFormat:@"World"];
    NSLog(@"Concatenated string: %@\n", str3);
    
    len = [str3 length];
    NSLog(@"Length of str3 : %d\n", len);
    
    str3 = [[NSString alloc] initWithFormat:@"%@ %@", str1, str2];
    NSLog(@"Using initWithFormat: %@\n", str3);
    
    [pool drain];
    
    return 0;
}
