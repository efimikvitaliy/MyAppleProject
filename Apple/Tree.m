//
//  Tree.m
//  Apple
//
//  Created by Admin on 05.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Tree.h"
#include <stdlib.h>
#include "Leaf.h"

@implementation Tree

@synthesize leafCount = _leafCount;
@synthesize leafs = _leafs;

-(void)addLeaf{
    Leaf * leaf = [[Leaf alloc] init];
    [_leafs addObject:leaf];
    _leafCount +=1;
}

-(void)deleteLeaf:(NSUInteger *)index{
    if([_leafs count] >= *index + 1){
        [((Leaf *)[_leafs objectAtIndex:*index]) fall];
        [_leafs removeObjectAtIndex:*index];
        _leafCount -=1;
    }
}

-(Leaf *)getLeafAtIndex:(NSUInteger *)index{
    Leaf * leaf;
    if([_leafs count] >= index ){
        NSLog(@"Access to %lu leaf of %lu", index, [_leafs count] );
        leaf = [_leafs objectAtIndex:index];
        
    }
    return leaf;
}


-(id)init{
    self = [super init];
    _leafCount = arc4random_uniform(1000);
    _leafs = [[NSMutableArray alloc] init];
    for(int i=0; i<_leafCount; ++i)
        [_leafs addObject:[[Leaf alloc] init]];
    return self;
}

@end
