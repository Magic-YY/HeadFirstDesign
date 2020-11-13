//
//  QuackCopunter.m
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/12.
//

#import "QuackCopunter.h"

static int numberOfQuacks = 0;
 
@interface QuackCopunter ()

@property (nonatomic, strong) id<QuackableProtocol> duck;


@end

@implementation QuackCopunter

- (instancetype)initWithObject:(id<QuackableProtocol>)duck
{
    self = [super init];
    if (self) {
        self.duck = duck;
    }
    return self;
}

#pragma mark - QuackableProtocol
- (void)quack {
    [self.duck quack];
    numberOfQuacks += 1;
}

- (NSInteger)numberOfQuacks {
    return numberOfQuacks;
}

@end
