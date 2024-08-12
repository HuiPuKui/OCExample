//
//  Square.h
//  动态绑定
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Square : NSObject {
    float area;
}

- (void) calculateAreaOfSide:(CGFloat)side;

- (void) printArea;

@end

NS_ASSUME_NONNULL_END
