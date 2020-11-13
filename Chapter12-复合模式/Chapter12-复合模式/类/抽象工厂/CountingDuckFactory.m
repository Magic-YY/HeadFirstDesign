//
//  CountingDuckFactory.m
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/13.
//

#import "CountingDuckFactory.h"
//鸭子叫装饰者
#import "QuackCopunter.h"
//鸭子
#import "MallardDuck.h"
#import "RedheadDuck.h"
#import "DuckCall.h"
#import "RubberDuck.h"

@implementation CountingDuckFactory

#pragma mark - AbstractDuckFactoryProtocol
- (id<QuackableProtocol>)createMallardDuck {
    return [[QuackCopunter alloc] initWithObject:[[MallardDuck alloc] init]];
}

- (id<QuackableProtocol>)createReadheadDuck {
    return [[QuackCopunter alloc] initWithObject:[[RedheadDuck alloc] init]];
}

- (id<QuackableProtocol>)createDuckCall {
    return [[QuackCopunter alloc] initWithObject:[[DuckCall alloc] init]];
}

- (id<QuackableProtocol>)createRubberDuck {
    return [[QuackCopunter alloc] initWithObject:[[RubberDuck alloc] init]];
}

@end
