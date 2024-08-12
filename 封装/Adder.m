//
//  Adder.m
//  封装
//
//  Created by HuiPuKui on 2024/8/12.
//

#import "Adder.h"

@implementation Adder

- (id) initWithInitialNumber:(NSInteger)initialNumber {
    total = initialNumber;
    return self;
}

- (void) addNumber:(NSInteger)newNumber {
    total = total + newNumber;
}

- (NSInteger) getTotal {
    return total;
}

@end
