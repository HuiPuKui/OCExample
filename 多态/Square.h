//
//  Square.h
//  多态
//
//  Created by HuiPuKui on 2024/8/12.
//

#import "Shape.h"

NS_ASSUME_NONNULL_BEGIN

@interface Square : Shape {
    CGFloat length;
}

- (id) initWithSide:(CGFloat)side;

- (void) calculateArea;

@end

NS_ASSUME_NONNULL_END
