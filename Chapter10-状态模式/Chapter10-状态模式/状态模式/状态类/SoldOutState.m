//
//  SoldOutState.m
//  Chapter10-状态模式
//
//  Created by 杨运 on 2020/11/2.
//

#import "SoldOutState.h"

@interface SoldOutState ()

@property (nonatomic, strong) GumballMachine *gumballMachine;

@end

@implementation SoldOutState

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine
{
    self = [super initWithGumballMachine:gumballMachine];
    if (self) {
        self.gumballMachine = gumballMachine;
    }
    return self;
}

#pragma mark - StateProtocol
- (void)insertQuarter {
    NSLog(@"You can't insert a quarter, the machine is sold out");
}

- (void)ejectQuarter {
    NSLog(@"You can't eject, you haven't insert a quarter yet");
}

- (void)turnCrank {
    NSLog(@"You turned, but there are no gumballs");
}

- (void)dispense {
    NSLog(@"No gumball dispensed");
}

@end
