//
//  NYPizzaStore.m
//  Chapter04
//
//  Created by AreYouOK on 2020/8/9.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYStyleClamPizza.h"
#import "NYStyleCheesePizza.h"
#import "NYStyleVeggiePizza.h"
#import "NYStylePepperoniPizza.h"

@implementation NYPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza = nil;
    if ([type isEqualToString:@"cheese"]) {
        pizza = [[NYStyleCheesePizza alloc] init];
    } else if ([type isEqualToString:@"pepperoni"]) {
        pizza = [[NYStylePepperoniPizza alloc] init];
    } else if ([type isEqualToString:@"clam"]) {
        pizza = [[NYStyleClamPizza alloc] init];
    } else if ([type isEqualToString:@"veggie"]) {
        pizza = [[NYStyleVeggiePizza alloc] init];
    }
    return pizza;
}

@end
