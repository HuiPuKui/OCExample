//
//  main.m
//  多态
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

#import "Square.h"
#import "Rectg.h"

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Shape *square = [[Square alloc] initWithSide:10.0];
    [square calculateArea];
    [square printArea];
    
    Shape *rect = [[Rectg alloc] initWithLength:10.0 andBreadth:5.0];
    [rect calculateArea];
    [rect printArea];
    
    [pool drain];
    
    return 0;
}
