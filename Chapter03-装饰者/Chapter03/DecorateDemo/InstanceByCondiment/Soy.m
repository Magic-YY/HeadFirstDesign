//
//  Soy.m
//  Chapter03
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "Soy.h"

@implementation Soy


- (NSString *)descString {
    return [NSString stringWithFormat:@"%@ + %@", self.beverage.descString, @"Soy"];
}

- (double)cost {
    return [self.beverage cost] + 0.15;
}

@end
