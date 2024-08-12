//
//  Rectg.m
//  动态绑定
//
//  Created by HuiPuKui on 2024/8/12.
//

#import "Rectg.h"

@implementation Rectg

- (void) calculateAreaOfLength:(CGFloat)length andBreadth:(CGFloat)breadth {
    area = length * breadth;
}

- (void) printArea {
    NSLog(@"The area of Rectg is %f", area);
}

@end
