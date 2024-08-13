//
//  main.m
//  复合对象
//
//  Created by HuiPuKui on 2024/8/12.
//

#import <Foundation/Foundation.h>

@interface ValidatingArray : NSMutableArray {
    NSMutableArray *embeddedArray;
}

+ validatingArray;
- init;
- (NSUInteger)count;
- (id)objectAtIndex:(NSUInteger)index;
- (void) addObject:(id)object;
- (void) replaceObjectAtIndex:(NSUInteger)index withObject:(id)object;
- (void) removeLastObject;
- (void) insertObject:(id)object atIndex:(NSUInteger)index;
- (void) removeObjectAtIndex:(NSUInteger)index;

@end

@implementation ValidatingArray

+ (id)validatingArray {
    return [[self alloc] init];
}

- (id)init {
    self = [super init];
    if (self) {
        embeddedArray = [[NSMutableArray allocWithZone:[self zone]] init];
    }
    return self;
}

- (NSUInteger)count {
    return [embeddedArray count];
}

- (id)objectAtIndex:(NSUInteger)index {
    return [embeddedArray objectAtIndex:index];
}

- (void)addObject:(id)object {
    if (object != nil) {
        [embeddedArray addObject:object];
    }
}

- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)object {
    if (index < [embeddedArray count] && object != nil) {
        [embeddedArray replaceObjectAtIndex:index withObject:object];
    }
}

- (void)removeLastObject {
    if ([embeddedArray count] > 0) {
        [embeddedArray removeLastObject];
    }
}

- (void)insertObject:(id)object atIndex:(NSUInteger)index {
    if (object != nil) {
        [embeddedArray insertObject:object atIndex:index];
    }
}

- (void)removeObjectAtIndex:(NSUInteger)index {
    if (index < [embeddedArray count]) {
        [embeddedArray removeObjectAtIndex:index];
    }
}

@end

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    ValidatingArray *validatingArray = [ValidatingArray validatingArray];
    
    [validatingArray addObject:@"Object1"];
    [validatingArray addObject:@"Object2"];
    [validatingArray addObject:[NSNull null]];
    [validatingArray removeObjectAtIndex:2];
    NSString *aString = [validatingArray objectAtIndex:1];
    NSLog(@"The value at Index 1 is %@", aString);
    
    [pool drain];
    
    return 0;
}
