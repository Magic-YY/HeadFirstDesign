//
//  LightOffCommand.m
//  Chapter06
//
//  Created by EarthlyButcher on 2020/9/15.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "LightOffCommand.h"
#import "Light.h"

@interface LightOffCommand ()
@property (nonatomic,strong) Light *light;
@end

@implementation LightOffCommand
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
    [self.light off];
}

- (void)undo {
    NSAssert(self.light != nil, @"light对象为空");
    [self.light on];
}

@end
