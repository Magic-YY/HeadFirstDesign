//
//  Pizza.m
//  Chapter04
//
//  Created by AreYouOK on 2020/8/9.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "Pizza.h"

@interface Pizza ()

@end

@implementation Pizza

- (void)prepare {
    NSLog(@"prepare %@", NSStringFromClass([self class]));
}
- (void)bake {
    NSLog(@"bake %@", NSStringFromClass([self class]));
}
- (void)cut;
{
    NSLog(@"cut %@", NSStringFromClass([self class]));
}
- (void)box;
{
    NSLog(@"box %@", NSStringFromClass([self class]));
}

@end
