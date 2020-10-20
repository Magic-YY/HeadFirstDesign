//
//  CondimentDecorator.h
//  Chapter03
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "Beverage.h"

NS_ASSUME_NONNULL_BEGIN

@interface CondimentDecorator : Beverage
+ (void)initialize NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithBeverage:(Beverage *)beverage;
/**被装饰者*/
@property (nonatomic, strong) Beverage *beverage;

@end

NS_ASSUME_NONNULL_END
