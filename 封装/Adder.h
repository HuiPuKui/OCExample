//
//  Adder.h
//  封装
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Adder : NSObject {
    NSInteger total;
}

- (id) initWithInitialNumber:(NSInteger)initialNumber;

- (void) addNumber:(NSInteger)newNumber;

- (NSInteger)getTotal;

@end

NS_ASSUME_NONNULL_END
