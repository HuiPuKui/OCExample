//
//  main.m
//  类别
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

@interface NSString(MyAdditions)

+ (NSString *) getCopyRightString;

@end

@implementation NSString(MyAdditions)

+ (NSString *) getCopyRightString {
    return @"CopyRight Jc2182.com 2020";
}

@end

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSString *copyrightString = [NSString getCopyRightString];
    NSLog(@"Accessing Category: %@", copyrightString);
    
    [pool drain];
    
    return 0;
}
