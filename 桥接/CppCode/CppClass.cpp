//
//  CppClass.cpp
//  桥接
//
//  Created by HuiPuKui on 2024/8/14.
//

#include "CppClass.hpp"

#include <thread>
#include <iostream>

void CppClass::asyncFunction() {
    std::thread([this]() {
        this->doInAsync();
    }).detach();
}

void CppClass::doInAsync() {
    std::cout << "doing async work ..." << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(3));
    std::cout << "complete async work" << std::endl;
    
    if (callback_) {
        std::cout << "yes callback_" << std::endl;
        callback_();
        std::cout << "yes callback_ over" << std::endl;
    } else {
        std::cout << "no callback_" << std::endl;
    }
}

void CppClass::setCallback(std::function<void()> callback) {
    callback_ = callback;
}
