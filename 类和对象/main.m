//
//  main.m
//  类和对象
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject {
    double length;
    double breadth;
    double height;
}

@property(nonatomic, readwrite) double height;

- (double) volume;

@end

@implementation Box

@synthesize height;

- (id) init {
    self = [super init];
    length = 1.0;
    breadth = 1.0;
    return self;
}

- (double)volume {
    return length * breadth * height;
}

@end

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Box *box1 = [[Box alloc] init];
    Box *box2 = [[Box alloc] init];
    
    double volume = 0.0;
    
    box1.height = 5.0;
    box2.height = 10.0;
    
    volume = [box1 volume];
    NSLog(@"Volume of Box1 : %f\n", volume);
    
    volume = [box2 volume];
    NSLog(@"Volume of Box2 : %f\n", volume);
    
    [pool drain];
    
    return 0;
}
