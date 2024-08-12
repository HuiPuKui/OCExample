//
//  Square.m
//  多态
//
//  Created by HuiPuKui on 2024/8/12.
//

#import "Square.h"

@implementation Square

- (id) initWithSide:(CGFloat)side {
    length = side;
    return self;
}

- (void) calculateArea {
    area = length * length;
}

- (void) printArea {
    NSLog(@"The area of square is %f", area);
}

@end
