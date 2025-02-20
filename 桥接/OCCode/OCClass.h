//
//  OCClass.h
//  桥接
//
//  Created by HuiPuKui on 2024/8/14.
//

#import <Foundation/Foundation.h>

#include <memory>

#include "../CppCode/CppClass.hpp"

NS_ASSUME_NONNULL_BEGIN

typedef void (^completionHandler)();

@interface OCClass : NSObject {
    std::shared_ptr<CppClass> cppClass;
}

- (instancetype)init;

- (void) startAsyncWorkInCpp;

@property (nonatomic, copy) completionHandler callback;

@property (nonatomic, strong) OCClass *selfRetain;

@end

NS_ASSUME_NONNULL_END
