//
//  AppleTree.m
//  Apple
//
//  Created by Admin on 05.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "AppleTree.h"
#import "Apple.h"
@implementation AppleTree


@synthesize appleCount = _appleCount;
@synthesize apples = _apples;

-(void)addApple{
    Apple * apple = [[Apple alloc] init];
    [_apples addObject:apple];
    _appleCount +=1;
}

-(void)deleteApple:(NSUInteger *)index{
    if([_apples count] >= *index + 1){
        [((Apple *)[_apples objectAtIndex:*index]) fall];
        [_apples removeObjectAtIndex:*index];
        _appleCount -=1;
    }
}

-(Apple *)getAppleAtIndex:(NSUInteger *)index{
    Apple * apple;
    if([_apples count] >= index ){
        NSLog(@"Access to %lu apple of %lu", index, [_apples count] );
        apple = [_apples objectAtIndex:index];
        
    }
    return apple;
}


-(id)init{
    self = [super init];
    _appleCount = arc4random_uniform(1000);
    _apples = [[NSMutableArray alloc] init];
    for(int i=0; i<_appleCount; ++i)
        [_apples addObject:[[Apple alloc] init]];
    return self;
}
@end
