//
//  LightOnCommand.h
//  Chapter06
//
//  Created by EarthlyButcher on 2020/9/11.
//  Copyright © 2020 yangyun. All rights reserved.
//  开灯命令对象

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

NS_ASSUME_NONNULL_BEGIN
@class Light;
@interface LightOnCommand : NSObject<CommandProtocol>

- (instancetype)initWithLight:(Light *)light;

@end

NS_ASSUME_NONNULL_END
