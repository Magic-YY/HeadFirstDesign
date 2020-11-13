//
//  DuckFactory.m
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/13.
//

#import "DuckFactory.h"

#import "MallardDuck.h"
#import "RedheadDuck.h"
#import "DuckCall.h"
#import "RubberDuck.h"

@implementation DuckFactory

#pragma mark - AbstractDuckFactoryProtocol
- (id<QuackableProtocol>)createMallardDuck {
    return [[MallardDuck alloc] init];
}

- (id<QuackableProtocol>)createReadheadDuck {
    return [[RedheadDuck alloc] init];
}

- (id<QuackableProtocol>)createDuckCall {
    return [[DuckCall alloc] init];
}

- (id<QuackableProtocol>)createRubberDuck {
    return [[RubberDuck alloc] init];
}

@end
