//
//  Apple.m
//  Apple
//
//  Created by Admin on 05.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#include <stdlib.h>
#import "Apple.h"

@implementation Apple

@synthesize seedCount = _seedCount;
@synthesize currentColor = _currentColor;
@synthesize isOnTree = _isOnTree;

-(void)ripen{
    //_seedCount += arc4random_uniform(5);
    if( _currentColor <= Red){
        _currentColor +=1;
        
    }
    //NSLog(@"Now current color is + %d" , Red);
}
-(void)fall{
    _isOnTree = false;
}

-(NSString *)getColor{
    NSString *rezult;
    if (_currentColor == Green) {
        rezult = @"Green";
    }
    else if (_currentColor == Yellow){
        rezult = @"Yellow";
    }
    else {
        rezult = @"Red";
    }
    return rezult;
}

-(id)init{
    self = [super init];
    _currentColor = Green;
    _seedCount += arc4random_uniform(5);
    _isOnTree = true;
    return self;
}

@end