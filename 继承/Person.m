//
//  Person.m
//  继承
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person

- (id) initWithName:(NSString *)name andAge:(NSInteger)age {
    personName = name;
    personAge = age;
    return self;
}

- (void) print {
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
}

@end
