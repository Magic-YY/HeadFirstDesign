//
//  Mocha.m
//  Chapter03
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "Mocha.h"

@interface Mocha ()

@end

@implementation Mocha


- (NSString *)descString {
    return [NSString stringWithFormat:@"%@ + %@", self.beverage.descString, @"Mocha"];
}

- (double)cost {
    return [self.beverage cost] + 0.2;
}

@end
