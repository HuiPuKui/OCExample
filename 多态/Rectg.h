//
//  Rectg.h
//  多态
//
//  Created by HuiPuKui on 2024/8/12.
//

#import "Shape.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectg : Shape {
    CGFloat length;
    CGFloat breadth;
}

- (id) initWithLength:(CGFloat)rLength andBreadth:(CGFloat)rBreadth;

@end

NS_ASSUME_NONNULL_END
