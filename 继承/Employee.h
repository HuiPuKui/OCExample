//
//  Employee.h
//  OCLearn
//
//  Created by HuiPuKui on 2024/8/12.
//

#ifndef Employee_h
#define Employee_h

#import "Person.h"

@interface Employee : Person {
    NSString *employeeEducation;
}

- (id) initWithName:(NSString *)name andAge:(NSInteger)age andEducation:(NSString *)education;

- (void) print;

@end

#endif /* Employee_h */
