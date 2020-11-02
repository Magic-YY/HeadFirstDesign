//
//  SoldState.m
//  Chapter10-状态模式
//
//  Created by 杨运 on 2020/11/2.
//

#import "SoldState.h"

@interface SoldState ()

@property (nonatomic, strong) GumballMachine *gumballMachine;

@end

@implementation SoldState

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
    NSLog(@"Please wait, we're already giving you a gumball");
}

- (void)ejectQuarter {
    NSLog(@"Sorry, you already turned the crank");
}

- (void)turnCrank {
    NSLog(@"Turning twice doesn't get you another gumball");
}

- (void)dispense {
    [self.gumballMachine releaseBall];
    if (self.gumballMachine.count > 0) {
        self.gumballMachine.currentState = self.gumballMachine.noQuarterState;
    } else {
        NSLog(@"Oops, out of gumballs");
        self.gumballMachine.currentState = self.gumballMachine.soldOutState;
    }
}

@end
