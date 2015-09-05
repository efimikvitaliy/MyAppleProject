//
//  AppleTree.h
//  Apple
//
//  Created by Admin on 05.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tree.h"

@interface AppleTree : Tree



@property NSInteger appleCount;
@property NSMutableArray* apples;

-(void)addApple;
-(void)deleteApple:(NSUInteger *)index;
-(Leaf *)getAppleAtIndex:(NSUInteger *)index;
-(id)init;


@end
