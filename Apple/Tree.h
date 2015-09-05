//
//  Tree.h
//  Apple
//
//  Created by Admin on 05.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Leaf.h"
@interface Tree : NSObject


@property NSInteger leafCount;
@property NSMutableArray* leafs;

-(void)addLeaf;
-(void)deleteLeaf:(NSUInteger *)index;
-(Leaf *)getLeafAtIndex:(NSUInteger *)index;
-(id)init;


@end
