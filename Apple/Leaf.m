//
//  Leaf.m
//  Apple
//
//  Created by Admin on 05.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf

@synthesize currentColor = _currentColor;
@synthesize isOnTree = _isOnTree;

-(void)getOld{
    if(_currentColor <= Yellow){
        _currentColor += 1;
    }
}

-(NSString *)getColor{
    NSString * result = nil;
    switch (_currentColor) {
        case Green:
            result = @"Green";
            break;
        case Yellow:
            result = @"Yeallow";
            break;
        default:
            result = @"Unkonw Color";
            break;
    }
    return result;
}

-(BOOL)fall{
    BOOL result = false;
    if(_isOnTree){
        _isOnTree = false;
        result = true;
    }
    return result;
}

-(id)init{
    self = [super init];
    _currentColor = Green;
    _isOnTree = true;
    return self;
}
@end
