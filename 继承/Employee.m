//
//  Employee.m
//  继承
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@implementation Employee

- (id) initWithName:(NSString *)name andAge:(NSInteger)age andEducation:(NSString *)education {
    personName = name;
    personAge = age;
    employeeEducation = education;
    return self;
}

- (void) print {
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
    NSLog(@"Education: %@", employeeEducation);
}

@end
