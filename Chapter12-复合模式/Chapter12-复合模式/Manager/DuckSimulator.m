//
//  DuckSimulator.m
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/4.
//

#import "DuckSimulator.h"

#import "QuackableProtocol.h"
//鸭子
#import "MallardDuck.h"
#import "RedheadDuck.h"
#import "DuckCall.h"
#import "RubberDuck.h"
//鹅适配器
#import "GooseAdapter.h"
//鸭子叫装饰者
#import "QuackCopunter.h"

@implementation DuckSimulator

- (void)simulate {
    id<QuackableProtocol> mallardDuck = [[QuackCopunter alloc] initWithObject:[[MallardDuck alloc] init]];
    id<QuackableProtocol> readheadDuck = [[QuackCopunter alloc] initWithObject:[[RedheadDuck alloc] init]];
    id<QuackableProtocol> duckCall = [[QuackCopunter alloc] initWithObject:[[DuckCall alloc] init]];
    id<QuackableProtocol> rubberDuck = [[QuackCopunter alloc] initWithObject:[[RubberDuck alloc] init]];

    Goose *goose = [[Goose alloc] init];
    id<QuackableProtocol> gooseAdapter = [[GooseAdapter alloc] initWithGoose:goose];

    [self simulate:mallardDuck];
    [self simulate:readheadDuck];
    [self simulate:duckCall];
    [self simulate:rubberDuck];

    [self simulate:gooseAdapter];
    QuackCopunter *counter = (QuackCopunter *)rubberDuck;
    NSLog(@"duck quack counts = %ld", (long)counter.numberOfQuacks);
}

- (void)factorySimulate:(id<AbstractDuckFactoryProtocol>)factory {
    id<QuackableProtocol> mallardDuck = [factory createMallardDuck];
    id<QuackableProtocol> readheadDuck = [factory createReadheadDuck];
    id<QuackableProtocol> duckCall = [factory createDuckCall];
    id<QuackableProtocol> rubberDuck = [factory createRubberDuck];
    
    Goose *goose = [[Goose alloc] init];
    id<QuackableProtocol> gooseAdapter = [[GooseAdapter alloc] initWithGoose:goose];
    
    [self simulate:mallardDuck];
    [self simulate:readheadDuck];
    [self simulate:duckCall];
    [self simulate:rubberDuck];
    
    [self simulate:gooseAdapter];
    QuackCopunter *counter = (QuackCopunter *)rubberDuck;
    NSLog(@"duck quack counts = %ld", (long)counter.numberOfQuacks);
}

- (void)simulate:(id<QuackableProtocol>)duck {
    [duck quack];
}

@end
