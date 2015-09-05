//
//  Apple.h
//  Apple
//
//  Created by Admin on 05.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Helper.h"

@interface Apple : NSObject

@property NSInteger seedCount;
@property MyColor currentColor;
@property BOOL isOnTree;

-(void)ripen;
-(void)fall;
-(NSString *)getColor;

-(id)init;
@end