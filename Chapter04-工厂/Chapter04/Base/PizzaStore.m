//
//  PizzaStore.m
//  Chapter04
//
//  Created by AreYouOK on 2020/8/9.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "PizzaStore.h"


@interface PizzaStore ()

@end

@implementation PizzaStore

- (Pizza *)orderPizza:(NSString *)type {
    Pizza *pizza = nil;
    pizza = [self createPizza:type];
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    return pizza;
}

- (Pizza *)createPizza:(NSString *)type {
    NSLog(@"如果子类没有重写父类方法，报异常");
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

@end
