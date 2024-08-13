//
//  main.m
//  数据存储
//
//  Created by HuiPuKui on 2024/8/13.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    // NSArray 不可变数组  NSMutableArray 可变数组
    NSArray *array = [[NSArray alloc] initWithObjects:@"string1", @"string2", @"string3", nil];
    NSString *string1 = [array objectAtIndex:0];
    NSLog(@"The object in array at Index 0 is %@", string1);
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    [mutableArray addObject:@"string"];
    string1 = [mutableArray objectAtIndex:0];
    NSLog(@"The object in mutableArray at Index 0 is %@", string1);
    
    // NSDictionary 不可变字典   NSMutableDictionary 可变字典
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:@"string1", @"key1", @"string2", @"key2", @"string3", @"key3", nil];
    string1 = [dictionary objectForKey:@"key1"];
    NSLog(@"The object for key, key1 in dictionary is %@", string1);
    
    NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc] init];
    [mutableDictionary setValue:@"string" forKey:@"key1"];
    string1 = [mutableDictionary objectForKey:@"key1"];
    NSLog(@"The object for key, key1 in mutableDictionary is %@", string1);
    
    // NSSet 不可变集合  NSMutableSet 可变集合
    NSSet *set = [[NSSet alloc] initWithObjects:@"string1", @"string2", @"string3", nil];
    NSArray *setArray = [set allObjects];
    NSLog(@"The objects in set are %@", setArray);
    
    NSMutableSet *mutableSet = [[NSMutableSet alloc] init];
    [mutableSet addObject:@"string1"];
    setArray = [mutableSet allObjects];
    NSLog(@"The object in mutableSet are %@", setArray);
    
    [pool drain];
    
    return 0;
}
