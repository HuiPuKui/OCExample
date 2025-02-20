//
//  OCClass.m
//  桥接
//
//  Created by HuiPuKui on 2024/8/14.
//

#import "OCClass.h"

#include <iostream>

@implementation OCClass

- (nonnull instancetype)init {
    self = [super init];
    if (self) {
        cppClass = std::make_shared<CppClass>();
        
        self.callback = ^{
            NSLog(@"callback handler");
        };
    }
    return self;
}

- (void)dealloc {
    NSLog(@"dealloc");
}

- (void)startAsyncWorkInCpp {
    self.selfRetain = self;
    __weak typeof(self) weakSelf = self;
    
    cppClass->setCallback([weakSelf]() {
        dispatch_async(dispatch_get_main_queue(), ^{
            __strong typeof(weakSelf) strongSelf = weakSelf;
            if (strongSelf) {
                // 执行完成处理器，如果有的话
                if (strongSelf.callback) {
                    strongSelf.callback();
                }
                
                // 异步操作完成后释放自己持有的强引用
                strongSelf.selfRetain = nil;
            }
        });
    });

    cppClass->asyncFunction();
}



@end
