//
//  Shape.h
//  多态
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Shape : NSObject {
    CGFloat area;
}

- (void) printArea;

- (void) calculateArea;

@end

NS_ASSUME_NONNULL_END
