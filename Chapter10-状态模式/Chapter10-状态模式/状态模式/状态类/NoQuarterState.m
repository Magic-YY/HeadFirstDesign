//
//  NoQuarterState.m
//  Chapter10-状态模式
//
//  Created by 杨运 on 2020/11/2.
//

#import "NoQuarterState.h"

@interface NoQuarterState ()

@property (nonatomic, strong) GumballMachine *gumballMachine;

@end

@implementation NoQuarterState

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
    NSLog(@"You insert a quarter");
    self.gumballMachine.currentState = self.gumballMachine.hasQuarterState;
}

- (void)ejectQuarter {
    NSLog(@"You haven't insert a quarter");
}

- (void)turnCrank {
    NSLog(@"You truned, but there's no quarter");
}

- (void)dispense {
    NSLog(@"You need to pay first");
}

@end
