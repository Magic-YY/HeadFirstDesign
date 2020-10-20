//
//  DarkRoast.m
//  Chapter03
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "DarkRoast.h"

@implementation DarkRoast

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (double)cost {
    return [super cost] + 0.99;
}

- (NSString *)descString {
    return [NSString stringWithFormat:@"%@ + %@", @"DarkRoast", self.sizeString];
}


@end
