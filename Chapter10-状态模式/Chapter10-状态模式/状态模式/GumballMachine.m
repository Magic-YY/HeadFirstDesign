//
//  GumballMachine.m
//  Chapter10-状态模式
//
//  Created by 杨运 on 2020/11/2.
//

#import "GumballMachine.h"
//状态类
#import "NoQuarterState.h"
#import "SoldOutState.h"
#import "SoldState.h"
#import "HasQuarterState.h"
#import "WinnerState.h"

@interface GumballMachine ()

@property (nonatomic, strong, readwrite) id<StateProtocol> soldOutState;
@property (nonatomic, strong, readwrite) id<StateProtocol> noQuarterState;
@property (nonatomic, strong, readwrite) id<StateProtocol> hasQuarterState;
@property (nonatomic, strong, readwrite) id<StateProtocol> soldState;
@property (nonatomic, strong, readwrite) id<StateProtocol> winnerState;

@property (nonatomic, assign, readwrite) NSInteger count;

@end

@implementation GumballMachine

- (instancetype)initWithNumberGumballs:(NSInteger)count
{
    self = [super init];
    if (self) {
        self.count = count;
        self.soldOutState = [[SoldOutState alloc] initWithGumballMachine:self];
        self.noQuarterState = [[NoQuarterState alloc] initWithGumballMachine:self];
        self.hasQuarterState = [[HasQuarterState alloc] initWithGumballMachine:self];
        self.soldState = [[SoldState alloc] initWithGumballMachine:self];
        self.winnerState = [[WinnerState alloc] initWithGumballMachine:self];
        if (count > 0) {
            self.currentState = self.noQuarterState;
        }
    }
    return self;
}

#pragma mark - public method
- (void)insertQuarter {
    [self.currentState insertQuarter];
}

- (void)ejectQuarter {
    [self.currentState ejectQuarter];
}

- (void)turnCrank {
    [self.currentState turnCrank];
    [self.currentState dispense];
}

- (void)releaseBall {
    NSLog(@"A Gumball comes rolling out the slot...");
    if (self.count != 0) {
        self.count -= 1;
    }
}

- (void)refillNumberGumballs:(NSInteger)count {
    self.count = count;
    self.currentState = self.noQuarterState;
}

@end
