//
//  LightOffCommand.h
//  Chapter06
//
//  Created by EarthlyButcher on 2020/9/15.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

NS_ASSUME_NONNULL_BEGIN
@class Light;
@interface LightOffCommand : NSObject<CommandProtocol>
- (instancetype)initWithLight:(Light *)light;
@end

NS_ASSUME_NONNULL_END
