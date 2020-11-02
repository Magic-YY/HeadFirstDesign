//
//  HasQuarterState.m
//  Chapter10-状态模式
//
//  Created by 杨运 on 2020/11/2.
//

#import "HasQuarterState.h"

@interface HasQuarterState ()

@property (nonatomic, strong) GumballMachine *gumballMachine;
///随机数
@property (nonatomic, assign) float randomValue;

@end

@implementation HasQuarterState

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine
{
    self = [super initWithGumballMachine:gumballMachine];
    if (self) {
        self.gumballMachine = gumballMachine;
        self.randomValue = arc4random() % 10;
    }
    return self;
}

#pragma mark - StateProtocol
- (void)insertQuarter {
    NSLog(@"You can't insert another quarter");
}

- (void)ejectQuarter {
    NSLog(@"Quarter returned");
    self.gumballMachine.currentState = self.gumballMachine.noQuarterState;
}

- (void)turnCrank {
    NSLog(@"You Truned...");
    NSLog(@"RandowValue=%.1f", self.randomValue);
    //大于2 中奖
    if (self.randomValue > 2 && self.gumballMachine.count > 1) {
        self.gumballMachine.currentState = self.gumballMachine.winnerState;
    } else {
        self.gumballMachine.currentState = self.gumballMachine.soldState;
    }
}

- (void)dispense {
    NSLog(@"No Gumball dispensed");
}

@end
