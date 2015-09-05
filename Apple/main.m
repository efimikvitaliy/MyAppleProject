//
//  main.m
//  Apple
//
//  Created by Admin on 05.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apple.h"
#import "Leaf.h"
#import "Tree.h"
#import "AppleTree.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Apple *apple = [[Apple alloc] init];
        NSLog(@"color: %@", [apple getColor]);
        
        [apple ripen];
        NSLog(@"color: %@", [apple getColor]);
        [apple ripen];
        NSLog(@"color: %@", [apple getColor]);
        
        Leaf *leaf = [[Leaf alloc] init];
        NSLog(@"Is Leaf on tree : %@" , [leaf isOnTree] ? @"true" : @"false");
        if([leaf fall])
            NSLog(@"Is Leaf on tree : %@" , [leaf isOnTree] ? @"true" : @"false");
        else
            NSLog(@"Leaf on the ground already");
        
        if([leaf fall])
            NSLog(@"Is Leaf on tree : %@" , [leaf isOnTree] ? @"true" : @"false");
        else
            NSLog(@"Leaf on the ground already");
        
        Tree * tree = [[Tree alloc] init];
        
        NSLog(@"Count of Leafs: %ld", [tree leafCount]);
        [tree addLeaf];
        NSLog(@"Count of Leafs: %ld", [tree leafCount]);
        NSUInteger *index = 1ul;
        NSLog(@"Color of first leaf %@", [[tree getLeafAtIndex:index] getColor]);
        
        AppleTree * appleTree = [[AppleTree alloc] init];
        NSLog(@"Count of apples %ld", [appleTree appleCount] );
        NSLog(@"Count of leafs %ld", [appleTree leafCount] );
        
    }
    return 0;
}