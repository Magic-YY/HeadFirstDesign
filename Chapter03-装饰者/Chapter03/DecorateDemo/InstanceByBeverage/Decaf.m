//
//  Decaf.m
//  Chapter03
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "Decaf.h"

@implementation Decaf

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (double)cost {
    return [super cost] + 1.05;
}

- (NSString *)descString {
    return [NSString stringWithFormat:@"%@ + %@", @"Decaf", self.sizeString];
}

@end
