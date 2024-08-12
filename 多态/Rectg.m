//
//  Rectg.m
//  多态
//
//  Created by HuiPuKui on 2024/8/12.
//

#import "Rectg.h"

@implementation Rectg

- (id) initWithLength:(CGFloat)rLength andBreadth:(CGFloat)rBreadth {
    length = rLength;
    breadth = rBreadth;
    return self;
}

- (void) calculateArea {
    area = length * breadth;
}

@end
