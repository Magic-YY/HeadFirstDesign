//
//  LightOnCommand.m
//  Chapter06
//
//  Created by EarthlyButcher on 2020/9/11.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "LightOnCommand.h"
#import "Light.h"

@interface LightOnCommand ()
@property (nonatomic,strong) Light *light;
@end

@implementation LightOnCommand

- (instancetype)initWithLight:(Light *)light
{
    self = [super init];
    if (self) {
        if (light) {
            self.light = light;
        }
    }
    return self;
}

#pragma mark - CommandProtocol
- (void)execute {
    NSAssert(self.light != nil, @"light对象为空");
    [self.light on];
}

///撤销-执行与execute相反的方法
- (void)undo {
    NSAssert(self.light != nil, @"light对象为空");
    [self.light off];
}

@end
