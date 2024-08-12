//
//  main.m
//  继承
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSLog(@"Base class Person Object");
    Person *person = [[Person alloc] initWithName:@"Raj" andAge:5];
    [person print];
    
    NSLog(@"Inherited Class Employee Object");
    Employee *employee = [[Employee alloc] initWithName:@"Raj" andAge:5 andEducation:@"MBA"];
    [employee print];
    
    [pool drain];
    
    return 0;
}
