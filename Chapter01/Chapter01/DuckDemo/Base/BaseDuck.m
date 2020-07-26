//
//  BaseDuck.m
//  Chapter01
//
//  Created by AreYouOK on 2020/7/26.
//  Copyright © 2020 yangyun. All rights reserved.
//  

#import "BaseDuck.h"

@interface BaseDuck ()

@end

@implementation BaseDuck

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

#pragma mark public method
- (void)swim {
    NSLog(@"鸭子会游泳");
}
- (void)performFly {
    [self.flyBehavior fly];
    
}
- (void)performQuack {
    [self.quackBehavior quack];
}

@end
