//
//  Condiment.m
//  Chapter03
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "CondimentDecorator.h"

@implementation CondimentDecorator

- (instancetype)initWithBeverage:(Beverage *)beverage {
    if (self = [super init]) {
        self.beverage = beverage;
    }
    return self;
}

@end
