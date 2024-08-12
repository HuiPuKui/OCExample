//
//  Square.m
//  动态绑定
//
//  Created by HuiPuKui on 2024/8/12.
//

#import "Square.h"

@implementation Square

- (void) calculateAreaOfSide:(CGFloat)side {
    area = side * side;
}

- (void) printArea {
    NSLog(@"The area of square is %f", area);
}

@end
