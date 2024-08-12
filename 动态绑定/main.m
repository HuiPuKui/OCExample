//
//  main.m
//  动态绑定
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

#import "Square.h"
#import "Rectg.h"

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Square *square = [[Square alloc] init];
    [square calculateAreaOfSide:10.0];
    
    Rectg *rectangle = [[Rectg alloc] init];
    [rectangle calculateAreaOfLength:10.0 andBreadth:5.0];
    
    NSArray *shapes = [[NSArray alloc] initWithObjects:square, rectangle, nil];
    
    id object1 = [shapes objectAtIndex:0];
    [object1 printArea];
    
    id object2 = [shapes objectAtIndex:1];
    [object2 printArea];
    
    [pool drain];
    
    return 0;
}
