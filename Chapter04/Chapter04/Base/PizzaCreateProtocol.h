//
//  PizzaCreateProtocol.h
//  Chapter04
//
//  Created by AreYouOK on 2020/8/9.
//  Copyright © 2020 yangyun. All rights reserved.
//


#import "Pizza.h"

#ifndef PizzaCreateProtocol_h
#define PizzaCreateProtocol_h


@protocol PizzaCreateProtocol <NSObject>

- (Pizza *)createPizza:(NSString *)type;

@end

#endif /* PizzaCreateProtocol_h */
