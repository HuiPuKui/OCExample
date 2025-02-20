//
//  CppClass.hpp
//  桥接
//
//  Created by HuiPuKui on 2024/8/14.
//

#ifndef CppClass_hpp
#define CppClass_hpp

#include <stdio.h>
#include <functional>

class CppClass {
public:
    void asyncFunction();
    void setCallback(std::function<void()> callback);

private:
    void doInAsync();
    
private:
    std::function<void()> callback_;
};

#endif /* CppClass_hpp */
