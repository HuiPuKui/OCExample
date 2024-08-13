//
//  main.m
//  字面量和字符串
//
//  Created by HuiPuKui on 2024/8/13.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSString *string = @"....菜鸟教程 cainiaoya.com.....";
    NSLog(@"Initial String : %@", string);
    
    NSCharacterSet *characterset = [NSCharacterSet punctuationCharacterSet];
    string = [string stringByTrimmingCharactersInSet:characterset];
    NSLog(@"Final String : %@", string);
    
    [pool drain];
    
    return 0;
}
