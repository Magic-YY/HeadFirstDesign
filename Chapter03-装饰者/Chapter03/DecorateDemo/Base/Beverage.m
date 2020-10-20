//
//  Beverage.m
//  Chapter03
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "Beverage.h"


@implementation Beverage

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.descString = @"Unknown Beverage";
        self.sizeType = BeverageSizeTypeNone;
    }
    return self;
}

- (double)cost {
    return 0.0 + [self additionMoney];
}

- (double)additionMoney {
    double money = 0.0;
    switch (self.sizeType) {
        case BeverageSizeTypeBig:
            money = 0.2;
            break;
        case BeverageSizeTypeMiddle:
            money = 0.15;
            break;
        case BeverageSizeTypeSmall:
            money = 0.1;
            break;
        default:
            break;
    }
    return money;
}

- (NSString *)sizeString {
    NSString *string = @"无效";
    switch (self.sizeType) {
        case BeverageSizeTypeBig:
            string = @"Big";
            break;
        case BeverageSizeTypeMiddle:
            string = @"Middle";
            break;
        case BeverageSizeTypeSmall:
            string = @"Small";
            break;
        default:
            break;
    }
    return string;
}

@end
