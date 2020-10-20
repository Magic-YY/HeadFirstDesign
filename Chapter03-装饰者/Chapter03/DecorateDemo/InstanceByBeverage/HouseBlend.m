//
//  HouseBlend.m
//  Chapter03
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "HouseBlend.h"

@implementation HouseBlend

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (double)cost {
    return [super cost] + 0.89;
}

- (NSString *)descString {
    return [NSString stringWithFormat:@"%@ + %@", @"House Blend Coffee", self.sizeString];
}

@end
