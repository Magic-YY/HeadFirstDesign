//
//  BaseState.m
//  Chapter10-状态模式
//
//  Created by 杨运 on 2020/11/2.
//

#import "BaseState.h"

@implementation BaseState

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine
{
    self = [super init];
    if (self) {
        NSAssert(gumballMachine != nil, @"gumball  不能给空");
    }
    return self;
}

@end
