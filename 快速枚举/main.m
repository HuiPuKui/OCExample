//
//  main.m
//  快速枚举
//
//  Created by HuiPuKui on 2024/8/13.
//

#import <Foundation/Foundation.h>

/*
 快速枚举语法
 for (classType variable in collectionObject) {
    statements
 }
 */


void test() {
    NSArray *array = [[NSArray alloc] initWithObjects:@"string1", @"string2", @"string3", nil];
    
    for (NSString *aString in array) {
        NSLog(@"Value: %@", aString);
    }
    
    if (array.count > 0) {
        NSString *firstString = array[0];
        NSLog(@"First String: %@", firstString);
    }
}

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"string1", @"string2", @"string3", nil];
    
    for (NSString *aString in array) {
        NSLog(@"Value: %@", aString);
    }
    
    for (NSString *aString in [array reverseObjectEnumerator]) {
        NSLog(@"Value: %@", aString);
    }
    
    [pool drain];
    
    return 0;
}

