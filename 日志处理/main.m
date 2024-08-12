//
//  main.m
//  日志处理
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

#if DEBUG == 0
#define DebugLog(...)
#elif DEBUG == 1
#define DebugLog(...) NSLog(__VA_ARGS__)
#endif

int main(int argc, const char * argv[]) {
    
    DebugLog(@"Debug log, our custom addition gets \
printed during debug only");
    NSLog(@"NSLog gets printed always");
    
    return 0;
}
