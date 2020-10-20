//
//  MallardDuck.m
//  Chapter01
//
//  Created by AreYouOK on 2020/7/26.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "MallardDuck.h"
#import "FlyWithWings.h"
#import "Quack.h"

@interface MallardDuck ()
//@property (nonatomic,strong) FlyWithWings *flyBehavior;
//@property (nonatomic,strong) Quack *quackBehavior;
@end

@implementation MallardDuck

- (instancetype)init
{
    self = [super init];
    if (self) {
        //默认
        self.flyBehavior = [[FlyWithWings alloc] init];
        self.quackBehavior = [[Quack alloc] init];
    }
    return self;
}



@end
