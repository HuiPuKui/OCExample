//
//  Person.h
//  OCLearn
//
//  Created by HuiPuKui on 2024/8/12.
//

#ifndef Person_h
#define Person_h

@interface Person : NSObject {
    NSString *personName;
    NSInteger personAge;
}

- (id) initWithName:(NSString *)name andAge:(NSInteger)age;

- (void) print;

@end

#endif /* Person_h */
