//
//  Whip.m
//  Chapter03
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "Whip.h"


@implementation Whip

- (NSString *)descString {
    return [NSString stringWithFormat:@"%@ + %@", self.beverage.descString, @"Whip"];
}

- (double)cost {
    return [self.beverage cost] + 0.1;
}

@end
