//
//  main.m
//  快速枚举
//
//  Created by HuiPuKui on 2024/8/13.
//

#import <Foundation/Foundation.h>

/*
 快速枚举语法
 for (classType variable in collectionObject) {
    statements
 }
 */

//int main(int argc, const char * argv[]) {
//    
//    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//    
//    NSArray *array = [[NSArray alloc] initWithObjects:@"string1", @"string2", @"string3", nil];
//    
//    for (NSString *aString in array) {
//        NSLog(@"Value: %@", aString);
//    }
//    
//    for (NSString *aString in [array reverseObjectEnumerator]) {
//        NSLog(@"Value: %@", aString);
//    }
//    
//    [pool drain];
//    
//    return 0;
//}

#include <iostream>
#include <algorithm>
#include <unordered_map>
#include <string>
#include <vector>
#include <sstream>
#include <set>

using namespace std;

typedef long long LL;
typedef unsigned long long ULL;
typedef std::pair<int, int> PII;

const int N = 400010;

bool s[110][110][110]; // 三维
int a[110][110]; // 二维

int n, m;

int main() {
    
    cin >> n >> m;
    for (int i = 1; i <= n; i ++) {
        for (int j = 1; j <= m; j ++) {
            cin >> a[i][j];
        }
    }
    
    for (int i = 1; i <= n; i ++) {
        for (int j = 1; j <= m; j ++) {
            for (int k = 1; k <= a[i][j]; k ++) {
                s[i][j][k] = true;
            }
        }
    }
    
    int res1 = 0, res2 = 0, res3 = 0;
    for (int i = 1; i <= 105; i ++) {
        for (int j = 1; j <= 105; j ++) {
            bool is_have1 = false, is_have2 = false, is_have3 = false;
            for (int k = 1; k <= 105; k ++) {
                if (s[i][j][k]) is_have1 = true; // 俯视
                if (s[k][j][i]) is_have2 = true; // 正视
                if (s[j][k][i]) is_have3 = true; // 侧视
            }
            res1 += is_have1, res2 += is_have2, res3 += is_have3;
        }
    }
    
    cout << res2 << ' ' << res3 << ' ' << res1 << endl;
    
    return 0;
}

