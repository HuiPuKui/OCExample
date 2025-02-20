//
//  main.m
//  桥接
//
//  Created by HuiPuKui on 2024/8/14.
//

#include <iostream>
#include <string>
 
class Request {
public:
    ~Request() {
        std::cout << "~Request()" << std::endl;
    }
};

// Component
class Strategy  {
public:
    std::shared_ptr<Request> request;
    std::shared_ptr<Strategy> selff;
    
    virtual ~Strategy() {
        std::cout << "~Strategy()" << " handler.use_count: " << request.use_count() << std::endl;
    }

    virtual void initilized() = 0;
    virtual void initRequest() = 0;
};
 
// Concrete Component
class DefaultStrategy : public Strategy, public std::enable_shared_from_this<Strategy> {
public:
    ~DefaultStrategy() {
        std::cout << "~DefaultStrategy()" << " handler.use_count: " << request.use_count() << std::endl;
    }
    
    void initilized() override {
        selff = shared_from_this();
    }

    void initRequest() override {
        request = std::make_shared<Request>();
    }
};
 
// Decorator
class Decorator : public Strategy {
protected:
    std::shared_ptr<Strategy> strategy;
public:
    ~Decorator() {
        std::cout << "~Decorator()" << " handler.use_count: " << request.use_count() << std::endl;
    }
    
    void initilized() override { }
    
    void initRequest() override {
        strategy->initRequest();
    }
    
    Decorator(std::shared_ptr<Strategy> ic) : strategy(ic) {
        
    }
};
 
class DNSDecorator : public Decorator {
public:
    ~DNSDecorator() {
        std::cout << "~DNSDecorator()" << " handler.use_count: " << request.use_count() << std::endl;
    }
    
    void initilized() override {
        
    }
    
    void initRequest() override {
        strategy->initRequest();
    }
    
    DNSDecorator(std::shared_ptr<Strategy> ic) : Decorator(ic) {
        
    }
};
  
int main()
{
    {
        // 假装是默认的策略
        std::shared_ptr<Strategy> defaultStrategy = std::make_shared<DefaultStrategy>();
        defaultStrategy->initRequest();
    }
    
    {
        std::cout << "---------" << std::endl;
        // 假装是 DNS 策略
        std::shared_ptr<Strategy> defaultStrategy = std::make_shared<DefaultStrategy>();
        defaultStrategy->initilized(); // 假装它不会释放
        
        std::shared_ptr<Strategy> dnsDecorator = std::make_shared<DNSDecorator>(defaultStrategy);
        defaultStrategy = dnsDecorator;
        dnsDecorator->initRequest();
    }
    
    {
        std::cout << "---------" << std::endl;
        // 假装正常释放
        std::shared_ptr<Strategy> defaultStrategy = std::make_shared<DefaultStrategy>();
        std::shared_ptr<Strategy> dnsDecorator = std::make_shared<DNSDecorator>(defaultStrategy);
        defaultStrategy = dnsDecorator;
        dnsDecorator->initRequest();
    }
    
    while (true);
 
    return 0;
}

// 装饰器模式 demo
//#include <iostream>
//#include <string>
// 
//using namespace std;
// 
//// Component
//class IceCream {
//public:
//    virtual ~IceCream() { std::cout << "~IceCream()" << std::endl; }
//    virtual string getDescription() const = 0;
//    virtual double cost() const = 0;
//};
// 
//// Concrete Component
//class VanillaIceCream : public IceCream {
//public:
//    ~VanillaIceCream() { std::cout << "~VanillaIceCream()" << std::endl; }
//    
//    string getDescription() const override
//    {
//        return "Vanilla Ice Cream";
//    }
// 
//    double cost() const override { return 160.0; }
//};
// 
//// Decorator
//class Decorator : public IceCream {
//protected:
//    IceCream* iceCream;
// 
//public:
//    Decorator(IceCream* ic)
//        : iceCream(ic)
//    {
//    }
// 
//    ~Decorator() {
//        std::cout << "~Decorator()" << std::endl;
//    }
//    
//    string getDescription() const override
//    {
//        return iceCream->getDescription();
//    }
// 
//    double cost() const override
//    {
//        return iceCream->cost();
//    }
//};
// 
//// Concrete Decorator - adds chocolate topping.
//class ChocolateDecorator : public Decorator {
//public:
//    ChocolateDecorator(IceCream* ic)
//        : Decorator(ic)
//    {
//    }
//    
//    ~ChocolateDecorator() {
//        std::cout << "~ChocolateDecorator()" << std::endl;
//    }
// 
//    string getDescription() const override
//    {
//        return iceCream->getDescription()
//            + " with Chocolate";
//    }
// 
//    double cost() const override
//    {
//        return iceCream->cost() + 100.0;
//    }
//};
// 
//// Concrete Decorator - adds caramel topping.
//class CaramelDecorator : public Decorator {
//public:
//    CaramelDecorator(IceCream* ic)
//        : Decorator(ic)
//    {
//    }
//    
//    ~CaramelDecorator() {
//        std::cout << "~CaramelDecorator()" << std::endl;
//    }
// 
//    string getDescription() const override
//    {
//        return iceCream->getDescription() + " with Caramel";
//    }
// 
//    double cost() const override
//    {
//        return iceCream->cost() + 150.0;
//    }
//};
// 
//int main()
//{
//    // Create a vanilla ice cream
//    IceCream* vanillaIceCream = new VanillaIceCream();
//    cout << "Order: " << vanillaIceCream->getDescription()
//        << ", Cost: Rs." << vanillaIceCream->cost()
//        << endl;
// 
//    // Wrap it with ChocolateDecorator
//    IceCream* chocolateIceCream
//        = new ChocolateDecorator(vanillaIceCream);
//    cout << "Order: " << chocolateIceCream->getDescription()
//        << ", Cost: Rs." << chocolateIceCream->cost()
//        << endl;
//
//    // Wrap it with CaramelDecorator
//    IceCream* caramelIceCream
//        = new CaramelDecorator(chocolateIceCream);
//    cout << "Order: " << caramelIceCream->getDescription()
//        << ", Cost: Rs." << caramelIceCream->cost()
//        << endl;
// 
//    delete caramelIceCream;
//    delete chocolateIceCream;
//    delete vanillaIceCream;
// 
//    return 0;
//}
