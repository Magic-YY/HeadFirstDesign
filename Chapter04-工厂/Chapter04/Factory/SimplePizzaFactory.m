//
//  SimplePizzaFactory.m
//  Chapter04
//
//  Created by AreYouOK on 2020/8/9.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "SimplePizzaFactory.h"
#import "CheesPizza.h"
#import "PepperoniPizza.h"
#import "ClamPizza.h"
#import "VeggiePizza.h"

@implementation SimplePizzaFactory

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza = nil;
    if ([type isEqualToString:@"cheese"]) {
        pizza = [[CheesPizza alloc] init];
    } else if ([type isEqualToString:@"pepperoni"]) {
        pizza = [[PepperoniPizza alloc] init];
    } else if ([type isEqualToString:@"clam"]) {
        pizza = [[ClamPizza alloc] init];
    } else if ([type isEqualToString:@"veggie"]) {
        pizza = [[VeggiePizza alloc] init];
    }
    return pizza;
}

@end
