//
//  PizzaStore.h
//  Chapter04
//
//  Created by AreYouOK on 2020/8/9.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "PizzaCreateProtocol.h"
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN


@interface PizzaStore : NSObject

- (Pizza *)orderPizza:(NSString *)type;

- (Pizza *)createPizza:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
